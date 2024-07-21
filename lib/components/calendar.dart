import 'package:flutter/material.dart';
import 'package:wedding/components/commons/custom_table_calendar.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/commons/header_text.dart';
import 'package:wedding/constants/color.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const HeaderText(
            text: '2024.09.07',
            color: PRIMARY_COLOR,
          ),
          Gap.h4,
          const Text(
            '토요일 오후 4시 50분',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          Gap.h32,
          const CustomTableCalendar(),
        ],
      ),
    );
  }
}
