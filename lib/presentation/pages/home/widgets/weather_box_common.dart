import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../common/weather_animation/rain/animated_rain_background.dart';
import '../../../models/weather_model.dart';
import '../../../router/router.dart';

class WeatherBoxCommon extends StatelessWidget {
  const WeatherBoxCommon({
    super.key,
    required this.location,
    required this.name,
    required this.weather,
    this.isCurrentLocation = false,
  });

  final String location;
  final String name;
  final WeatherModel? weather;
  final bool isCurrentLocation;

  @override
  Widget build(BuildContext context) {
    final String? weatherMain = weather?.current?.weather?.main;
    final bool isRaining = checkRaining(weatherMain);
    return InkWell(
      onTap: () {
        if (weather != null) {
          WeatherRouter($extra: weather).go(context);
        }
      },
      child: isRaining
          ? AnimatedRainBackground(
              raindropCount: getRainDrops(
                weather?.current?.rain?.rain1h,
              ),
              child: _WeatherContainer(
                location: location,
                name: name,
                weather: weather,
                isCurrentLocation: isCurrentLocation,
              ),
            )
          : _WeatherContainer(
              location: location,
              name: name,
              weather: weather,
              isCurrentLocation: isCurrentLocation,
            ),
    );
  }
}

class _WeatherContainer extends StatefulWidget {
  const _WeatherContainer({
    required this.location,
    required this.name,
    required this.weather,
    required this.isCurrentLocation,
  });

  final String location;
  final String name;
  final WeatherModel? weather;
  final bool isCurrentLocation;

  @override
  State<_WeatherContainer> createState() => _WeatherContainerState();
}

class _WeatherContainerState extends State<_WeatherContainer> {
  List<Color> colors = <Color>[];

  @override
  void initState() {
    colors = setBackgroundColorBasedOnWeather(widget.weather?.current?.weather);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant _WeatherContainer oldWidget) {
    if (oldWidget.weather != widget.weather) {
      colors = setBackgroundColorBasedOnWeather(widget.weather?.current?.weather);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.shade500.withOpacity(0.9),
            offset: const Offset(1.5, 1.5),
            blurRadius: 10,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: const Color(0x0fffffff).withOpacity(0.6),
            offset: const Offset(-1.5, -1.5),
            blurRadius: 5,
            spreadRadius: 0.4,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(
                Icons.gps_fixed,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              Text(
                widget.isCurrentLocation ? (context.t?.yourLocation).orError : widget.location,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            widget.name,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            widget.weather?.current?.weather?.description ?? (context.t?.unknown).orError,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: CustomMultiChildLayout(
              delegate: _WeatherBoxLayoutDelegate(),
              children: <Widget>[
                LayoutId(
                  id: 'icon',
                  child: widget.weather?.current?.weather?.iconPng ?? const SizedBox.shrink(),
                ),
                LayoutId(
                  id: 'temperature',
                  child: Text(
                    '${widget.weather?.current?.tempCelsius ?? '--'}°',
                    style: const TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _WeatherBoxLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    if (hasChild('icon')) {
      final BoxConstraints iconConstraints = BoxConstraints.loose(size);
      final Size iconSize = layoutChild('icon', iconConstraints);
      positionChild('icon', Offset(0, (size.height - iconSize.height) / 2));
    }

    if (hasChild('temperature')) {
      final BoxConstraints tempConstraints = BoxConstraints.loose(size);
      final Size tempSize = layoutChild('temperature', tempConstraints);
      positionChild(
        'temperature',
        Offset((size.width - tempSize.width) / 2, (size.height - tempSize.height) / 2),
      );
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => false;
}
