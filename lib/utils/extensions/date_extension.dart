import 'package:intl/intl.dart' as formatter;

extension DateExt on DateTime? {
  String get formattedDate => this != null ? formatter.DateFormat("dd MMMM yyyy", "tr-TR").format(this!) : "";

  String get formattedDateYMD => this != null ? formatter.DateFormat('yyyy/MM/dd').format(this!) : "";
}
