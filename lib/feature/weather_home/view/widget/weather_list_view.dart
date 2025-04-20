import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:weather/feature/common/widget/custom_network_image.dart';
import 'package:weather/feature/weather_home/extension/weather_extension.dart';
import 'package:weather/feature/weather_home/model/weather.dart';
import 'package:weather/feature/weather_home/notifier/weather_home_notifier.dart';

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
          return WeatherListItem(report: reports[index], index: index);
        },
      ),
    );
  }
}

class WeatherListItem extends ConsumerWidget {
  const WeatherListItem({super.key, required this.report, required this.index});

  final WeatherReport report;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(weatherHomeNotifierProvider.notifier);

    return InkWell(
      onTap: () => notifier.changeIndex(index),
      child: Container(
        width: 140,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(DateFormat.E().format(report.dateTime)),
            CustomNetworkImage(
              url:
                  report.weatherDetails.firstOrNull?.getIconUrl(
                    IconSize.small,
                  ) ??
                  '',
              errorIconSize: 32,
            ),
            Text(
              '${report.main.tempInCelcius.toInt()} °C / '
              '${report.main.tempInFahrenheit.toInt()} °F',
            ),
          ],
        ),
      ),
    );
  }
}
