import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/core.dart';
import '../../models/weather_model.dart';
import 'widgets/current_weather_component.dart';
import 'widgets/daily_weather_component.dart';
import 'widgets/hourly_weather_component.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({
    super.key,
    required this.weather,
  });

  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (context.t?.yourLocation).orError,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: context.pop,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // TODO(lappd): BackgroundColor base on the current location
            colors: <Color>[
              /// Clear
              // const Color(0xff3BE5FF).withOpacity(0.8),
              // const Color(0xffB2F3F8).withOpacity(0.4),

              /// Rain
              const Color(0xffB0D7D9).withOpacity(0.6),
              const Color(0xff323434).withOpacity(1.0),
            ],
          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
            cacheExtent: 400,
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              const SliverToBoxAdapter(
                child: CurrentWeatherComponent(
                  locationName: 'Bảo Lâm, Lâm Đồng',
                  temp: 19,
                  description: 'Có mây',
                ),
              ),
              SliverToBoxAdapter(
                child: HourlyWeatherComponent(
                  hourly: weather.hourly ?? <HourlyWeatherModel>[],
                ),
              ),
              SliverToBoxAdapter(
                child: DailyWeatherComponent(
                  hourly: weather.daily ?? <DailyWeatherModel>[],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
