import 'package:cro_holidays/src/croatian_holiday.dart';

extension CroHolidaysDateTimeExtension on DateTime {
  bool get isCroHoliday {
    final holiday = croHoliday;

    if (holiday == null) {
      return false;
    }

    return true;
  }

  CroatianHoliday? get croHoliday {
    final month = this.month;
    final day = this.day;

    final isVictoryAndHomelandThanksgivingDay = month == 8 && day == 5;
    if (isVictoryAndHomelandThanksgivingDay) {
      return CroatianHoliday.victoryAndHomelandThanksgivingDay;
    }

    final isChristmas = month == 12 && day == 25;
    if (isChristmas) {
      return CroatianHoliday.christmas;
    }

    return null;
  }
}
