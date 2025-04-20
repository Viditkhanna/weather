import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/feature/weather_home/notifier/weather_home_notifier.dart';

class WeatherErrorView extends ConsumerWidget {
  const WeatherErrorView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(weatherHomeNotifierProvider.notifier);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Something Went Wrong!'),
            TextButton(onPressed: notifier.fetchWeather, child: Text('Retry')),
          ],
        ),
      ),
    );
  }
}
