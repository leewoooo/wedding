import 'package:flutter/material.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/constants/color.dart';

class Header2 extends StatelessWidget {
  const Header2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 32.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Two are better than one;\nbecause they have a good reward\nfor their labor',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: PRIMARY_COLOR,
            ),
          ),
          Gap.h8,
          const Text(
            'Ecclesiastes 4:9',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14.0,
              color: PRIMARY_COLOR,
            ),
          ),
        ],
      ),
    );
  }
}
