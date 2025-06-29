import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/core.dart';
import 'home_state.dart';
import 'home_view_model.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeViewModel homeViewModel = ref.watch(homeProvider.notifier);
    final HomeState homeState = ref.watch(homeProvider);

    useFailureStateListener<HomeState>((String v) {
      logger.e('Error: $v');
    }, ref, homeProvider);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                (context.t?.home).orError,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              ElevatedButton(
                onPressed: homeViewModel.callError,
                child: const Text('Trigger Error'),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: homeState.weather?.daily?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        'Weather Data ${index + 1}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      subtitle: Text(
                        'Temperature: ${homeState.weather?.daily?[index].temp?.day}°C',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
