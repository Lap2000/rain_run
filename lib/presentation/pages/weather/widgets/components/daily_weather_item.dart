import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/core.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../common/text/base_app_text.dart';
import '../../../../models/weather_model.dart';

class DailyWeatherItem extends StatelessWidget {
  const DailyWeatherItem({
    super.key,
    required this.dailyWeather,
  });
  final DailyWeatherModel dailyWeather;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BaseAppText(
                _getDayOfWeekFormatted(dailyWeather.dateTime, context),
                size: 18,
              ),
              BaseAppText(
                dailyWeather.weather?.description ?? (context.t?.unknown).orError,
                size: 14,
              ),
            ],
          ),
        ),
        dailyWeather.weather?.iconPng ?? Assets.icons.png.a01d.image(width: 40, height: 40),
        const SizedBox(width: 16),
        Column(
          children: <Widget>[
            Assets.icons.png.pop.image(width: 40, height: 40),
            BaseAppText(
              '${dailyWeather.pop}%',
              color: Colors.blue,
            ),
          ],
        ),
        const SizedBox(width: 24),
        Column(
          children: <Widget>[
            Assets.icons.png.uv.image(width: 40, height: 40),
            BaseAppText(
              dailyWeather.uvi.toString(),
              color: _uvColor(dailyWeather.uvi),
            ),
          ],
        ),
        // Column(
        //   children: <Widget>[
        //     Assets.icons.png.thermometer.image(width: 40, height: 40),
        //     const BaseAppText(
        //       '32°',
        //       color: Colors.red,
        //     ),
        //   ],
        // ),
        const Expanded(
          child: Center(
            child: BaseAppText(
              '40°',
              size: 22,
            ),
          ),
        )
      ],
    );
  }
}

Color _uvColor(double? uvi) {
  if (uvi == null || uvi <= 2) {
    return Colors.greenAccent.shade700;
  }
  if (uvi <= 5) {
    return Colors.yellowAccent;
  }
  if (uvi <= 7) {
    return Colors.orangeAccent;
  }
  if (uvi <= 10) {
    return Colors.redAccent;
  }
  return Colors.purple;
}

String _getDayOfWeekFormatted(DateTime? date, BuildContext context) {
  // Để lấy locale hiện tại của ứng dụng, bạn có thể dùng:
  // Localizations.localeOf(context).languageCode
  // Hoặc nếu bạn muốn cố định, có thể truyền vào một chuỗi locale cụ thể (ví dụ: 'vi_VN')
  if (date == null) {
    return (context.t?.unknown).orError;
  }
  return DateFormat.E(Localizations.localeOf(context).toString()).format(date);
  // Nếu bạn muốn ngày đầu tiên (hôm nay) hiện "Hôm nay", bạn có thể thêm logic kiểm tra ở đây
  /*
    final now = DateTime.now();
    if (date.year == now.year && date.month == now.month && date.day == now.day) {
      return 'Hôm nay'; // Hoặc context.t?.today
    } else {
      return DateFormat.E(Localizations.localeOf(context).toString()).format(date);
    }
    */
}
