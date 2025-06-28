import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Weather Page',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
