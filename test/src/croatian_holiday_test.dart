import 'package:cro_holidays/cro_holidays.dart';
import 'package:cro_holidays/src/croatian_holiday.dart';
import 'package:test/test.dart';

void main() {
  group("CroHolidaysDateTimeExtension", () {
    group('croHoliday', () {
      test(
        'given August 5, when call croHoliday, should return [CroatianHoliday.victoryAndHomelandThanksgivingDay] ',
        () {
          final date = DateTime(2023, 8, 5);

          final holiday = date.croHoliday;

          expect(
            holiday,
            equals(CroatianHoliday.victoryAndHomelandThanksgivingDay),
          );
        },
      );

      test('given August 1, when call croHoliday, should return null', () {
        final date = DateTime(2023, 8, 1);

        final holiday = date.croHoliday;

        expect(holiday, isNull);
      });
    });
  });
}
