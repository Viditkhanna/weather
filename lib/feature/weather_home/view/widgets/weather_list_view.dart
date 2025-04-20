import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/feature/weather_home/extension/weather_extension.dart';
import 'package:weather/feature/weather_home/model/weather.dart';

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
