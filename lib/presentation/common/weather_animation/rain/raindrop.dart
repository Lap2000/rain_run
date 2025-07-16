import 'package:flutter/material.dart';

class Raindrop {
  Raindrop({
    required this.position,
    required this.length,
    required this.width,
    required this.speed,
    required this.opacity,
    required this.color,
  });
  final Offset position;
  final double length;
  final double width;
  final double speed;
  final double opacity;
  final Color color;

  Raindrop copyWith({
    Offset? position,
    double? length,
    double? width,
    double? speed,
    double? opacity,
    Color? color,
  }) {
    return Raindrop(
      position: position ?? this.position,
      length: length ?? this.length,
      width: width ?? this.width,
      speed: speed ?? this.speed,
      opacity: opacity ?? this.opacity,
      color: color ?? this.color,
    );
  }
}
