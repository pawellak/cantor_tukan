import 'package:cloud_firestore/cloud_firestore.dart';

import 'core_constants.dart';

class Converters
{
  ///TODO: write test
  String dateTimeToString(DateTime? dt) {
    String date;

    ///TODO: check if it's simpler?
    // date = DateTime.parse("2020-02-10 12:00:00Z").toString();

    if (dt == null) return CoreConstants.noDate;

    String year = dt.year.toString();
    String month = dt.month.toString();
    String day = dt.day.toString();
    String hour = dt.hour.toString();
    String min = dt.minute.toString();
    String sec = dt.second.toString();

    date = "$year-$month-$day $hour:$min:$sec";

    return date;
  }

  ///TODO: write test
  DateTime? timeStampToDateTime(Timestamp? ts) {
    if (ts == null) return null;
    var ms = ts.millisecondsSinceEpoch;
    return DateTime.fromMillisecondsSinceEpoch(ms);
  }

  ///TODO: write test
  DateTime dateTimeToDateTimeWithTimeIsMidnight(DateTime dt) {
    return DateTime(dt.year, dt.month, dt.day);
  }
}