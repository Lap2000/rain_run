import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/core.dart';
import 'home_state.dart';
import 'home_view_model.dart';
import 'widgets/weather_box_common.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final HomeViewModel homeViewModel = ref.watch(homeProvider.notifier);
    final HomeState homeState = ref.watch(homeProvider);

    useFailureStateListener<HomeState>((String v) {
      logger.e('Error: $v');
    }, ref, homeProvider);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // TODO(lappd): BackgroundColor base on the current location
            colors: <Color>[
              /// Clear
              const Color(0xffB2F3F8).withOpacity(0.4),
              const Color(0xff3BE5FF).withOpacity(0.8),

              /// Rain
              // const Color(0xffB0D7D9).withOpacity(0.6),
              // const Color(0xff323434).withOpacity(1.0),
            ],
          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(parent: ClampingScrollPhysics()),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    (context.t?.home).orError,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return WeatherBoxCommon(
                      key: ValueKey<int>(index),
                      location: 'Bảo Lâm, Lâm Đồng',
                      name: 'Bảo Lâm, Lâm Đồng',
                      isCurrentLocation: index.isEven,
                      weather: homeState.weather,
                    );
                  },
                  childCount: 1,
                ),
              ),
              // SliverToBoxAdapter(
              //   key: const ValueKey<int>(0),
              //   child: WeatherBoxCommon(
              //     location: 'Bảo Lâm, Lâm Đồng',
              //     name: 'Bảo Lâm, Lâm Đồng',
              //     isCurrentLocation: true,
              //     weather: homeState.weather,
              //   ),
              // ),
              // const SliverToBoxAdapter(
              //   key: ValueKey<int>(1),
              //   child: WeatherBoxCommon(
              //     location: 'Nhà',
              //     name: 'Bảo Lộc, Lâm Đồng',
              //     weather: WeatherEntity(
              //       current: CurrentWeatherEntity(
              //         tempCelsius: 28.4,
              //         weather: WeatherConditionEntity(
              //           id: 600,
              //           main: 'Snow',
              //           description: 'Tuyết rơi',
              //           icon: '13d',
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // const SliverToBoxAdapter(
              //   key: ValueKey<int>(2),
              //   child: WeatherBoxCommon(
              //     location: 'Vườn',
              //     name: 'Bảo Lộc, Lâm Đồng',
              //     weather: WeatherEntity(
              //       current: CurrentWeatherEntity(
              //         tempCelsius: 33.2,
              //         rain: Rain1hEntity(rain1h: 3),
              //         weather: WeatherConditionEntity(
              //           id: 600,
              //           main: 'Sand',
              //           description: 'Bão cát',
              //           icon: '50d',
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
