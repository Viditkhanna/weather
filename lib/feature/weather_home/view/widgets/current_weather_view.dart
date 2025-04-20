import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/feature/weather_home/extension/weather_extension.dart';
import 'package:weather/feature/weather_home/notifier/weather_home_notifier.dart';

class CurrentWeatherView extends ConsumerWidget {
  const CurrentWeatherView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final showTempInCelsius = ref.watch(
      weatherHomeNotifierProvider.select((e) => e.showTempInCelsius),
    );
    final notifier = ref.watch(weatherHomeNotifierProvider.notifier);
    final report = ref.watch(
      weatherHomeNotifierProvider.select((e) => e.mainReport),
    );

    if (report == null) {
      return Text('Something went wrong!');
    }

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
