import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'rain_painter.dart';
import 'raindrop.dart';

class AnimatedRainBackground extends StatefulWidget {
  const AnimatedRainBackground({
    super.key,
    required this.child,
    this.raindropCount = 200,
    this.raindropColors,
    this.minRaindropLength = 10.0,
    this.maxRaindropLength = 30.0,
    this.minRaindropWidth = 1.0,
    this.maxRaindropWidth = 2.0,
    this.minSpeed = 5,
    this.maxSpeed = 15,
    this.minOpacity = 0.5,
    this.maxOpacity = 0.8,
  });

  final Widget child;
  final int raindropCount;
  final List<Color>? raindropColors;
  final double minRaindropLength;
  final double maxRaindropLength;
  final double minRaindropWidth;
  final double maxRaindropWidth;
  final double minSpeed;
  final double maxSpeed;
  final double minOpacity;
  final double maxOpacity;

  @override
  State<AnimatedRainBackground> createState() => _AnimatedRainBackgroundState();
}

class _AnimatedRainBackgroundState extends State<AnimatedRainBackground>
    with TickerProviderStateMixin {
  final List<Raindrop> _raindrops = <Raindrop>[];
  final Random _random = Random();
  late Ticker _ticker;
  late RainPainter _rainPainter;
  late final ValueNotifier<int> _repaintNotifier;
  Size _canvasSize = Size.zero;

  @override
  void initState() {
    super.initState();
    _repaintNotifier = ValueNotifier<int>(0);
    _rainPainter = RainPainter(raindrops: _raindrops, repaint: _repaintNotifier);
    _ticker = createTicker(_onTick)..start();
  }

  void _initializeRaindrops(Size size) {
    _raindrops.clear();
    for (int i = 0; i < widget.raindropCount; i++) {
      _raindrops.add(_createRaindrop());
    }
  }

  Raindrop _createRaindrop() {
    double factor = (widget.raindropCount.clamp(5, 200) - 5) / (200 - 5);
    factor = 1.0 - factor;

    final double effectiveMinSpeed = widget.minSpeed * (0.5 + 0.5 * factor);
    final double effectiveMaxSpeed = widget.maxSpeed * (0.5 + 0.5 * factor);

    return Raindrop(
      position: Offset(_random.nextDouble(), -_random.nextDouble() * 0.2),
      length: widget.minRaindropLength +
          _random.nextDouble() * (widget.maxRaindropLength - widget.minRaindropLength),
      width: widget.minRaindropWidth +
          _random.nextDouble() * (widget.maxRaindropWidth - widget.minRaindropWidth),
      speed: effectiveMinSpeed + _random.nextDouble() * (effectiveMaxSpeed - effectiveMinSpeed),
      opacity: widget.minOpacity + _random.nextDouble() * (widget.maxOpacity - widget.minOpacity),
      color: widget.raindropColors?[_random.nextInt(widget.raindropColors!.length)] ?? Colors.white,
    );
  }

  void _onTick(Duration elapsed) {
    for (int i = 0; i < _raindrops.length; i++) {
      final Raindrop drop = _raindrops[i];
      final double newY = drop.position.dy + drop.speed * 0.016;
      if (newY > 1.2) {
        _raindrops[i] = _createRaindrop();
      } else {
        _raindrops[i] = drop.copyWith(position: Offset(drop.position.dx, newY));
      }
    }

    _repaintNotifier.value++;
  }

  @override
  void dispose() {
    _ticker.dispose();
    _repaintNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        final Size size = Size(constraints.maxWidth, constraints.maxHeight);
        if (_canvasSize != size) {
          _canvasSize = size;
          _initializeRaindrops(size);
        }

        return Stack(
          children: <Widget>[
            widget.child,
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsetsGeometry.fromLTRB(20, 32, 20, 56),
                child: CustomPaint(
                  painter: _rainPainter,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
