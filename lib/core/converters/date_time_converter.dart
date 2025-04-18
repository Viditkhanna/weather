import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class CustomDateTimeConverter implements JsonConverter<DateTime, String> {
  const CustomDateTimeConverter();

  @override
  DateTime fromJson(String dateString) {
    return DateFormat('yyyy-MM-dd').parse(dateString);
  }

  @override
  String toJson(DateTime dateTime) => dateTime.toString();
}
