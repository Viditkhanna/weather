import 'package:weather/feature/weather_home/model/weather.dart';

class WeatherFixture {
  // For testing filtration, be made to single in repository
  // class because of same date-time
  static final singleWeatherResponse = WeatherResponse(
    weatherReports: [
      WeatherReport(
        main: Main(tempInCelcius: 20, pressure: 20, humidity: 20),
        weatherDetails: [
          WeatherDetail(
            id: 12,
            main: 'Raining',
            description: 'description',
            icon: 'icon',
          ),
        ],
        wind: Wind(speed: 89),
        dateTime: DateTime(2025, 12, 12),
      ),
      WeatherReport(
        main: Main(tempInCelcius: 20, pressure: 20, humidity: 20),
        weatherDetails: [
          WeatherDetail(
            id: 12,
            main: 'main 2',
            description: 'description 2',
            icon: 'icon 2',
          ),
        ],
        wind: Wind(speed: 89),
        dateTime: DateTime(2025, 12, 12),
      ),
    ],
  );

  static final multiWeatherResponse = WeatherResponse(
    weatherReports: [
      WeatherReport(
        main: Main(tempInCelcius: 20, pressure: 20, humidity: 20),
        weatherDetails: [
          WeatherDetail(
            id: 12,
            main: 'Raining',
            description: 'description',
            icon: 'icon',
          ),
        ],
        wind: Wind(speed: 89),
        dateTime: DateTime(2025, 12, 12),
      ),
      WeatherReport(
        main: Main(tempInCelcius: 20, pressure: 20, humidity: 20),
        weatherDetails: [
          WeatherDetail(
            id: 12,
            main: 'main 2',
            description: 'description 2',
            icon: 'icon 2',
          ),
        ],
        wind: Wind(speed: 89),
        dateTime: DateTime(2024, 12, 12),
      ),
    ],
  );
}
