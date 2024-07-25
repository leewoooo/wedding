import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:wedding/constants/color.dart';

class CustomTableCalendar extends StatelessWidget {
  final LOCALE = 'ko_KR';

  const CustomTableCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final september = DateTime.utc(2024, 9, 7);

    return TableCalendar(
      locale: LOCALE,
      // firstDay, lastDay 달력 시작, 끝
      firstDay: september,
      lastDay: september,

      // focusedDay: 달력의 월을 보여줘야하는지 결정하는 날짜
      focusedDay: september,

      // selectedDayPredicate: 선택된 날짜를 표시하는 함수 (true 리턴 시 표시)
      selectedDayPredicate: (day) => isSameDay(september, day),

      /// STYLE
      // weekNumbersVisible 주차 표시 여부
      weekNumbersVisible: false,
      headerVisible: false,

      // daysOfWeekHeight: 요일 높이
      daysOfWeekHeight: 24.0,
      calendarStyle: calendarStyle(),
      calendarBuilders: calendarBuilders(),

      // 캘린더 제스처
      availableGestures: AvailableGestures.none,
    );
  }

  CalendarStyle calendarStyle() {
    const dayTextStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );

    const dayDecoration = BoxDecoration(
      shape: BoxShape.circle,
    );

    return CalendarStyle(
      // 선택된 날짜 스타일
      selectedDecoration: dayDecoration.copyWith(
        color: FILL_COLOR,
      ),
      selectedTextStyle: dayTextStyle,
      outsideDaysVisible: false,
    );
  }

  CalendarBuilders calendarBuilders() {
    TextStyle defaultTextStyle(DateTime day) => TextStyle(
          fontWeight: day.weekday == DateTime.saturday ? FontWeight.w700 : null,
          fontSize: 14.0,
        );

    Container defaultShapeContainer(Widget child, {Color? color}) {
      return Container(
        height: 36.0,
        width: 36.0,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(child: child),
      );
    }

    Text defaultDayText(DateTime day, {Color? color, bool isBold = false}) {
      return Text(
        '${day.day}',
        style: color == null
            ? defaultTextStyle(day)
            : defaultTextStyle(day).copyWith(
                fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
                color: color,
              ),
      );
    }

    return CalendarBuilders(
      // 요일 Builder (위젯을 return)
      dowBuilder: (context, day) => Center(
        child: Text(
          '${Intl.withLocale(
            'ko_KR',
            () => DateFormat('E').format(day),
          )}',
          style: defaultTextStyle(day),
        ),
      ),
      defaultBuilder: (context, day, focusedDay) => Center(
        child: defaultDayText(day),
      ),
      selectedBuilder: (context, day, focusedDay) => Center(
        child: defaultShapeContainer(
          Center(
            child: defaultDayText(day, color: PRIMARY_COLOR, isBold: true),
          ),
          color: GREY_COLOR2,
        ),
      ),
      outsideBuilder: (context, day, focusedDay) => Center(
        child: defaultDayText(day, color: GREY_COLOR),
      ),
      disabledBuilder: (context, day, focusedDay) => Center(
        child: defaultDayText(day, color: GREY_COLOR),
      ),
    );
  }
}
