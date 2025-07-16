import 'package:flutter/material.dart';

import '../../../../../core/core.dart';
import '../../../../common/common.dart';

class HourlyTemp extends StatelessWidget {
  const HourlyTemp({
    super.key,
    required this.time,
    required this.temp,
    required this.icon,
    this.isFirst = false,
  });
  final String time;
  final int temp;
  final Widget icon;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: <Widget>[
          BaseAppText(
            isFirst ? (context.t?.now).orError : time,
            size: 22,
          ),
          icon,
          BaseAppText(
            '$temp°',
            size: 18,
          ),
        ],
      ),
    );
  }
}
