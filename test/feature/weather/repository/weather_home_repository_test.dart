import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/feature/weather_home/repository/weather_home_repository.dart';

import '../../../fixture/weather_fixture.dart';
import '../../../mocks.dart';

void main() {
  late final MockApiClient client;
  late final WeatherHomeRepository repository;

  setUp(() {
    client = MockApiClient();
    repository = WeatherHomeRepository(apiClient: client);
    when(
      () => client.getWeather(
        city: any(named: 'city'),
        count: any(named: 'count'),
        unit: any(named: 'unit'),
      ),
    ).thenAnswer((_) async => WeatherFixture.singleWeatherResponse);
  });

  test('WeatherHomeRepository', () async {
    final response = await repository.getWeather();
    verify(
      () => client.getWeather(
        city: any(named: 'city'),
        count: any(named: 'count'),
        unit: any(named: 'unit'),
      ),
    ).called(1);

    expect(response, [
      WeatherFixture.singleWeatherResponse.weatherReports.first,
    ]);
    expect(response.length, 1);
  });
}
