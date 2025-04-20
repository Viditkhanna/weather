import 'package:mocktail/mocktail.dart';
import 'package:weather/core/data/api_client.dart';
import 'package:weather/feature/weather_home/repository/weather_home_repository.dart';

class MockApiClient extends Mock implements ApiClient {}

class MockWeatherHomeRepository extends Mock implements WeatherHomeRepository {}
