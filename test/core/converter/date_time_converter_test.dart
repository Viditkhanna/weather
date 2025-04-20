import 'package:flutter_test/flutter_test.dart';
import 'package:weather/core/converter/date_time_converter.dart';

void main() {
  test('CustomDateTimeConverter', () {
    final converter = CustomDateTimeConverter();
    final dateString = converter.toJson(DateTime(2025, 09, 27));
    expect(dateString, '2025-09-27 00:00:00.000');
  });
}
