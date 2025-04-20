import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/data/api_client.dart';
import 'package:weather/feature/weather_home/view/weather_home_screen.dart';
import 'package:weather/feature/weather_home/view/widget/weather_error_view.dart';
import 'package:weather/feature/weather_home/view/widget/weather_home_view.dart';

import '../../fixture/weather_fixture.dart';
import '../../mocks.dart';

void main() {
  late final MockApiClient client;

  setUpAll(() {
    client = MockApiClient();
  });

  testWidgets('WeatherHomeScreen success', (tester) async {
    when(
      () => client.getWeather(
        city: any(named: 'city'),
        count: any(named: 'count'),
        unit: any(named: 'unit'),
      ),
    ).thenAnswer((_) async => WeatherFixture.weatherResponse);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [apiClientProvider.overrideWith((_) => client)],
        child: MaterialApp(home: WeatherHomeScreen()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(WeatherHomeView), findsOneWidget);
  });

  testWidgets('WeatherHomeScreen error', (tester) async {
    when(
      () => client.getWeather(
        city: any(named: 'city'),
        count: any(named: 'count'),
        unit: any(named: 'unit'),
      ),
    ).thenThrow(Exception());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [apiClientProvider.overrideWith((_) => client)],
        child: MaterialApp(home: WeatherHomeScreen()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(WeatherErrorView), findsOneWidget);
  });
}
