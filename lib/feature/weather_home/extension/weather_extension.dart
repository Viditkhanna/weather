import 'package:weather/feature/weather_home/model/weather.dart';

enum IconSize { small, medium }

extension WeatherDetailX on WeatherDetail {
  String getIconUrl(IconSize iconSize) {
    switch (iconSize) {
      case IconSize.small:
        return 'https://openweathermap.org/img/wn/$icon@2x.png';
      case IconSize.medium:
        return 'https://openweathermap.org/img/wn/$icon@4x.png';
    }
  }
}
