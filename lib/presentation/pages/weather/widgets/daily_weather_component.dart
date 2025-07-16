import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../common/common.dart';
import '../../../models/weather_model.dart';
import 'components/daily_weather_item.dart';

class DailyWeatherComponent extends StatelessWidget {
  const DailyWeatherComponent({super.key, required this.hourly});
  final List<DailyWeatherModel> hourly;

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
          Row(
            children: <Widget>[
              const Icon(
                Icons.menu_book_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              BaseAppText(
                (context.t?.forecasts8day).orError,
                size: 16,
              ),
            ],
          ),
          const Divider(
            color: Colors.white30,
          ),
          ...List<Widget>.generate(8, (int index) {
            return Column(
              children: <Widget>[
                DailyWeatherItem(
                  dailyWeather: hourly[index],
                ),
                if (index < 7) const Divider(color: Colors.white30),
              ],
            );
          }),
        ],
      ),
    );
  }
}
