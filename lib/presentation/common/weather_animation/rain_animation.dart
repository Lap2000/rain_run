import 'dart:math' as math;
import 'package:flutter/material.dart';

class RainDrop {
  RainDrop({
    required this.position,
    required this.speed,
    required this.length,
    required this.opacity,
    required this.color,
    this.isActive = true,
  });
  Offset position;
  double speed;
  double length;
  double opacity;
  Color color;
  bool isActive;

  void reset(Size size, {double minSpeed = 5.0, double maxSpeed = 15.0}) {
    position = Offset(
      math.Random().nextDouble() * size.width,
      -math.Random().nextDouble() * size.height * 0.2,
    );
    speed = minSpeed + math.Random().nextDouble() * (maxSpeed - minSpeed);
    length = 10.0 + math.Random().nextDouble() * 10.0;
    opacity = 0.6 + math.Random().nextDouble() * 0.4;
    isActive = true;
    color = Colors.white.withOpacity(opacity);
  }
}

class RainPainter extends CustomPainter {
  RainPainter(this.drops) : _paint = Paint() {
    _paint.strokeCap = StrokeCap.round;
  }
  final List<RainDrop> drops;
  final Paint _paint;

  @override
  void paint(Canvas canvas, Size size) {
    for (final RainDrop drop in drops) {
      if (drop.isActive) {
        _paint.color = drop.color;
        _paint.strokeWidth = 1.0;

        canvas.drawLine(
          drop.position,
          drop.position.translate(0, drop.length),
          _paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant RainPainter oldDelegate) {
    return true;
  }
}

class RainAnimation extends StatefulWidget {
  const RainAnimation({
    super.key,
    required this.isRaining,
    this.numberOfDrops = 100,
    this.dropColor = Colors.white,
    this.minSpeed = 5.0,
    this.maxSpeed = 15.0,
  });
  final bool isRaining;
  final int numberOfDrops;
  final Color dropColor;
  final double minSpeed;
  final double maxSpeed;

  @override
  State<RainAnimation> createState() => _RainAnimationState();
}

class _RainAnimationState extends State<RainAnimation> with TickerProviderStateMixin {
  late AnimationController _controller;
  final List<RainDrop> _rainDrops = <RainDrop>[];
  Size? _canvasSize;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 16),
    )..addListener(_updateRainDrops);

    if (widget.isRaining) {
      _controller.repeat();
    }
  }

  @override
  void didUpdateWidget(covariant RainAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isRaining && !_controller.isAnimating) {
      _controller.repeat();
    } else if (!widget.isRaining && _controller.isAnimating) {
      _controller.stop();
      _rainDrops.clear();
    }
  }

  void _initializeRainDrops() {
    _rainDrops.clear();
    if (_canvasSize != null) {
      for (int i = 0; i < widget.numberOfDrops; i++) {
        final RainDrop drop = RainDrop(
          position: Offset.zero,
          speed: 0.0,
          length: 0.0,
          opacity: 0.0,
          color: widget.dropColor,
          isActive: false,
        );
        drop.reset(_canvasSize!, minSpeed: widget.minSpeed, maxSpeed: widget.maxSpeed);
        _rainDrops.add(drop);
      }
    }
  }

  void _updateRainDrops() {
    if (_canvasSize == null) {
      return;
    }

    for (final RainDrop drop in _rainDrops) {
      if (drop.isActive) {
        drop.position = drop.position.translate(0, drop.speed);

        if (drop.position.dy > _canvasSize!.height) {
          drop.reset(_canvasSize!, minSpeed: widget.minSpeed, maxSpeed: widget.maxSpeed);
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size newCanvasSize = Size(constraints.maxWidth, constraints.maxHeight);
        if (_canvasSize == null || _canvasSize != newCanvasSize) {
          _canvasSize = newCanvasSize;
          if (widget.isRaining) {
            _initializeRainDrops();
          }
        }

        if (!widget.isRaining && _rainDrops.isEmpty) {
          return const SizedBox.shrink();
        }

        return CustomPaint(
          painter: RainPainter(_rainDrops),
          child: const SizedBox.expand(),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
