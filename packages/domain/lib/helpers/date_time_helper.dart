import 'package:intl/intl.dart';

class DateTimeHelper {
  static DateFormat format = DateFormat("yyyy-MM-ddTHH:mm:ss.SSSZ");

  static DateTime toDateTime(String? value) {
    print(DateFormat.HOUR_MINUTE_GENERIC_TZ);
    print('DateTime : ${value ?? 'Null'} ');
    return value != null
        // ? format.parse(value, true)
        ? DateTime.parse(value)
        : DateTime.fromMillisecondsSinceEpoch(0);
  }

  static String fromDateTime(DateTime? value) {
    return value?.toUtc().toIso8601String() ?? '';
  }

  static DateTime? toDateTimeOptional(String? value) {
    print(DateFormat.HOUR_MINUTE_GENERIC_TZ);
    print('DateTime Optional : ${value ?? 'Null'} ');
    return value != null
        //? format.parse(value, true)
        ? DateTime.parse(value)
        : null;
  }

  static String? fromDateTimeOptional(DateTime? value) {
    return value?.toUtc().toIso8601String();
  }
}
