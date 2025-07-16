import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common/common.dart';
import '../../../models/weather_model.dart';
import 'components/hourly_temp.dart';

class HourlyWeatherComponent extends StatelessWidget {
  const HourlyWeatherComponent({super.key, required this.hourly});

  final List<HourlyWeatherModel> hourly;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.grey.shade100,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const BaseAppText(
            'Expect a day of partly cloudy with rain. Expect a day of partly cloudy with rain.',
            size: 16,
          ),
          const Divider(
            color: Colors.white30,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 16,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(parent: ClampingScrollPhysics()),
              itemBuilder: (BuildContext context, int index) {
                return HourlyTemp(
                  isFirst: index == 0,
                  time: '17',
                  temp: 28,
                  icon: Assets.icons.png.a01d.image(width: 40, height: 40),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
