import 'package:cro_holidays/cro_holidays.dart';

void main() {
  final now = DateTime.now();
  final isHoliday = now.isCroHoliday;

  if (isHoliday) {
    print('Today is a Croatian holiday: ${now.croHoliday}');
  } else {
    print('Today is not a Croatian holiday.');
  }
}
