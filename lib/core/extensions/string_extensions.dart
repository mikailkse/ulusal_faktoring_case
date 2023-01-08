import 'package:intl/intl.dart';

extension StringLocalization on String {
  static DateFormat get dateFormat => DateFormat('yyyy-MM-dd hh:mm');
}
