import 'package:flutter/material.dart';

class BaseAppText extends StatelessWidget {
  const BaseAppText(
    this.value, {
    super.key,
    this.size = 13,
    this.color,
  });

  final String value;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
        color: color ?? Colors.white,
        fontSize: size,
      ),
    );
  }
}
