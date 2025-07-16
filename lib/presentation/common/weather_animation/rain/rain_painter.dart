import 'package:flutter/material.dart';
import 'raindrop.dart';

class RainPainter extends CustomPainter {
  RainPainter({required this.raindrops, required Listenable repaint}) : super(repaint: repaint);
  final List<Raindrop> raindrops;
  final Paint _paint = Paint()..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {
    for (final Raindrop drop in raindrops) {
      _paint
        ..color = drop.color.withOpacity(drop.opacity)
        ..strokeWidth = drop.width;

      final Offset start = Offset(drop.position.dx * size.width, drop.position.dy * size.height);
      final Offset end = start.translate(0, drop.length);
      canvas.drawLine(start, end, _paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
