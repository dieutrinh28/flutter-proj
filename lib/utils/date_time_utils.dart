import 'package:intl/intl.dart';

class DateTimeUtils {
  const DateTimeUtils._();

  static String formatToString(DateTime dateTime) {
    const outputFormatPattern = "dd/MM/yyyy";
    final string = DateFormat(outputFormatPattern).format(dateTime);
    return string;
  }

  static DateTime formatToDateTime(String string) {
    const inputFormatPattern = "yyyy-MM-dd";
    final DateTime dateTime = DateFormat(inputFormatPattern).parse(string);
    return dateTime;
  }
}
