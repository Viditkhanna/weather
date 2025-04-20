import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/feature/weather_home/notifier/weather_home_notifier.dart';
import 'package:weather/feature/weather_home/view/widgets/weather_home_view.dart';

class WeatherHomeScreen extends ConsumerWidget {
  const WeatherHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      weatherHomeNotifierProvider.select((e) => e.weatherLoadingState),
    );
    final notifier = ref.watch(weatherHomeNotifierProvider.notifier);

    return RefreshIndicator(
      onRefresh: notifier.fetchWeather,
      child: switch (state) {
        WeatherLoadingStateIdle() => Scaffold(body: SizedBox.shrink()),
        WeatherLoadingStateLoading() => Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
        WeatherLoadingStateSuccess(weatherReports: var reports) =>
          WeatherHomeView(reports: reports),
        WeatherLoadingStateError() => Scaffold(
          body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Something Went Wrong!'),
                TextButton(
                  onPressed: notifier.fetchWeather,
                  child: Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      },
    );
  }
}
