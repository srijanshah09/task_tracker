import 'package:intl/intl.dart';

class ZFormatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-YYYY').format(date);
  }
  // format mobile
  // format currency
}