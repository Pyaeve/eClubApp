import 'package:intl/intl.dart';

String getCustomFormattedDateTime(String givenDateTime, String dateFormat) {
    // dateFormat = 'MM/dd/yy';
    final DateTime docDateTime = DateTime.parse(givenDateTime);
    String   resDatetime = DateFormat(dateFormat).format(docDateTime).toString();
    return resDatetime;
}

String getNumberFormatPY(int number){
  var gsFormat = NumberFormat.currency(locale: "es_PY", decimalDigits: 0,
      symbol: "Gs.");
  return gsFormat.format(number);
}