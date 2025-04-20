import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:weather/feature/weather_home/model/weather.dart';
import 'package:weather/feature/weather_home/notifier/weather_home_notifier.dart';
import 'package:weather/feature/weather_home/view/widgets/current_weather_view.dart';
import 'package:weather/feature/weather_home/view/widgets/weather_list_view.dart';

class WeatherHomeView extends ConsumerWidget {
  const WeatherHomeView({super.key, required this.reports});

  final List<WeatherReport> reports;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (reports.isEmpty) {
      return Scaffold(body: Center(child: Text('Something went wrong!')));
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Consumer(
          builder: (context, ref, widget) {
            final mainReport = ref.watch(
              weatherHomeNotifierProvider.select((e) => e.mainReport),
            );

            return Text(
              DateFormat(
                DateFormat.WEEKDAY,
              ).format(mainReport?.dateTime ?? DateTime.now()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            CurrentWeatherView(),
            SizedBox(height: 20),
            WeatherListView(reports: reports),
          ],
        ),
      ),
    );
  }
}
