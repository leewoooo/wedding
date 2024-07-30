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
        ],
      ),
    );
  }
}
