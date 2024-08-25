import 'package:flutter/material.dart';
import 'package:wedding/components/commons/custom_table_calendar.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/commons/header_text.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 32.0,
      ),
      child: Column(
        children: [
          const HeaderText(text: '2024.09.07'),
          Gap.h4,
          const Text(
            '토요일 오후 4시 50분',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Gap.h32,
          const CustomTableCalendar(),
          Gap.h16,
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _DDay(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _DDay extends StatelessWidget {
  const _DDay();

  @override
  Widget build(BuildContext context) {
    final now = DateUtils.dateOnly(DateTime.now());
    final weddingDay = DateTime(2024, 9, 7);

    final text = weddingDay.isBefore(now)
        ? '우길&은하 Welcome 유부월드🥳'
        : '우길&은하 결혼식까지 D-${weddingDay.difference(now).inDays}';

    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        color: Colors.black,
      ),
    );
  }
}
