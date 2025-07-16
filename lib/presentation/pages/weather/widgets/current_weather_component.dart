import 'package:flutter/material.dart';

import '../../../common/common.dart';

class CurrentWeatherComponent extends StatelessWidget {
  const CurrentWeatherComponent({
    super.key,
    required this.locationName,
    required this.temp,
    required this.description,
  });

  final String locationName;
  final int temp;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BaseAppText(
          locationName,
          size: 24,
        ),
        BaseAppText(
          '$temp°',
          size: 58,
        ),
        BaseAppText(
          description,
          size: 18,
        ),
      ],
    );
  }
}
