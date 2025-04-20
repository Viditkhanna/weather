import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/feature/weather_home/model/weather.dart';
import 'package:weather/feature/weather_home/view/widgets/current_weather_view.dart';
import 'package:weather/feature/weather_home/view/widgets/weather_list_view.dart';

class WeatherHomeView extends StatelessWidget {
  const WeatherHomeView({super.key, required this.reports});
  final List<WeatherReport> reports;

  @override
  Widget build(BuildContext context) {
    if (reports.isEmpty) {
      return Scaffold(body: Center(child: Text('Something went wrong!')));
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          DateFormat(DateFormat.WEEKDAY).format(reports.first.dateTime),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Builder(
          builder: (context) {
            return ListView(
              children: [
                CurrentWeatherView(report: reports.first),
                SizedBox(height: 20),
                WeatherListView(reports: reports),
              ],
            );
          },
        ),
      ),
    );
  }
}
