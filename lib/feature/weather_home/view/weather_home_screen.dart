import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:weather/feature/weather_home/extension/weather_extension.dart';
import 'package:weather/feature/weather_home/model/weather.dart';
import 'package:weather/feature/weather_home/notifier/weather_home_notifier.dart';

class WeatherHomeScreen extends ConsumerWidget {
  const WeatherHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      weatherHomeNotifierProvider.select((e) => e.weatherLoadingState),
    );

    return switch (state) {
      WeatherLoadingStateIdle() => Scaffold(body: SizedBox.shrink()),
      WeatherLoadingStateLoading() => Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      WeatherLoadingStateSuccess(weatherReports: var reports) =>
        WeatherHomeView(reports: reports),
      WeatherLoadingStateError() => Scaffold(body: Text('Error')),
    };
  }
}

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

class CurrentWeatherView extends ConsumerWidget {
  const CurrentWeatherView({super.key, required this.report});
  final WeatherReport report;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final showTempInCelsius = ref.watch(
      weatherHomeNotifierProvider.select((e) => e.showTempInCelsius),
    );
    final notifier = ref.watch(weatherHomeNotifierProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          report.weatherDetails.firstOrNull?.main ?? '',
          style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        Center(
          child: CachedNetworkImage(
            imageUrl:
                report.weatherDetails.firstOrNull?.getIconUrl(
                  IconSize.medium,
                ) ??
                '',
            errorWidget: (_, _, _) => Container(),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showTempInCelsius)
                Text(
                  '${report.main.tempInCelcius.toInt()} °C',
                  style: textTheme.displayLarge,
                )
              else
                Text(
                  '${report.main.tempInFahrenheit.toInt()} °F',
                  style: textTheme.displayLarge,
                ),
              IconButton(
                onPressed: () => notifier.changeTemperatureType(),
                icon: Icon(Icons.change_circle),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        _TextWithLabelView(
          label: 'Humidity: ',
          text: '${report.main.humidity}%',
        ),
        SizedBox(height: 4),
        _TextWithLabelView(
          label: 'Pressure: ',
          text: '${report.main.pressure} hpa',
        ),
        SizedBox(height: 4),
        _TextWithLabelView(label: 'Wind: ', text: '${report.wind.speed} km/h'),
      ],
    );
  }
}

class _TextWithLabelView extends StatelessWidget {
  const _TextWithLabelView({required this.label, required this.text});
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: label, style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: text),
        ],
      ),
    );
  }
}

class WeatherListView extends StatelessWidget {
  const WeatherListView({super.key, required this.reports});

  final List<WeatherReport> reports;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 4,
      child: ListView.separated(
        itemCount: reports.length,
        separatorBuilder: (_, _) => SizedBox(width: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 140,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(DateFormat.E().format(reports[index].dateTime)),
                CachedNetworkImage(
                  imageUrl:
                      reports[index].weatherDetails.firstOrNull?.getIconUrl(
                        IconSize.small,
                      ) ??
                      '',
                  errorWidget: (_, _, _) => Container(),
                ),
                Text(
                  '${reports[index].main.tempInCelcius.toInt()} °C / '
                  '${reports[index].main.tempInFahrenheit.toInt()} °F',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
