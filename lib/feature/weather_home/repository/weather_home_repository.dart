import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/core/data/api_client.dart';

final weatherHomeRepositoryProvider = Provider.autoDispose((ref) {
  return WeatherHomeRepository(apiClient: ref.watch(apiClientProvider));
});

class WeatherHomeRepository {
  final ApiClient apiClient;

  WeatherHomeRepository({required this.apiClient});

  Future getWeather() async {
    return apiClient.getWeather();
  }
}
