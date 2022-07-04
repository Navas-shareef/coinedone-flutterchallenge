import 'package:intl/intl.dart';

extension StringDateUtils on String {
  String toDate() {
    if (this == null) {
      return 'undefined-time';
    } else {
      final date = DateTime.tryParse(this);
      final month = DateFormat('MMMM').format(date!);
      // final year = DateFormat('y').format(date);

      return ' ${month.toUpperCase()} ${date.year}';
    }
  }

  String toFormattedDate() {
    if (this == null) {
      return 'undefined-time';
    } else {
      final date = DateTime.tryParse(this);
      final res = DateFormat('dd/MM/yyyy').format(date!);
      // final year = DateFormat('y').format(date);

      return res;
    }
  }
}
