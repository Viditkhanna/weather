import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/feature/weather_home/notifier/weather_home_notifier.dart';

import '../../../fixture/weather_fixture.dart';
import '../../../mocks.dart';

void main() {
  late final MockWeatherHomeRepository repository;
  late final WeatherHomeNotifier notifier;

  setUp(() {
    repository = MockWeatherHomeRepository();
    notifier = WeatherHomeNotifier(weatherHomeRepository: repository);
    when(
      () => repository.getWeather(),
    ).thenAnswer((_) async => WeatherFixture.weatherResponse.weatherReports);
  });

  test('WeatherHomeNotifier', () async {
    await notifier.fetchWeather();
    verify(() => repository.getWeather()).called(1);
    expect(
      notifier.state.mainReport,
      WeatherFixture.weatherResponse.weatherReports.first,
    );
    expect(
      notifier.state.weatherLoadingState,
      WeatherLoadingState.success(
        weatherReports: WeatherFixture.weatherResponse.weatherReports,
      ),
    );
    expect(notifier.state.showTempInCelsius, true);
    notifier.changeTemperatureType();
    expect(notifier.state.showTempInCelsius, false);
    notifier.changeIndex(1);
    expect(
      notifier.state.mainReport,
      WeatherFixture.weatherResponse.weatherReports[1],
    );
  });
}
