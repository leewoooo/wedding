import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
      color: Colors.black,
    );

    final dday = DateTime(2024, 9, 7);
    final today = DateTime.now();
    final difference = dday.difference(today).inDays;
    final ddayText = difference > 0 ? '그 날까지 D-$difference' : '결혼🎉';

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AutoSizeText.rich(
            textAlign: TextAlign.center,
            TextSpan(
                text: '2024.09.07 SATURDAY',
                style: defaultTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
                children: [
                  TextSpan(
                    text: '\n오후 04시 50분',
                    style: defaultTextStyle.copyWith(
                      fontSize: 16.0,
                    ),
                  ),
                ]),
          ),
          const SizedBox(height: 10),
          AutoSizeText(
            ddayText,
            style: defaultTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // Widget _buildTitleText() {
  //   return Positioned.fill(
  //     child: Align(
  //       alignment: Alignment.center,
  //       child: Container(
  //         padding: const EdgeInsets.all(20.0),
  //         decoration: BoxDecoration(color: Color(0xFFFFFFFF).withOpacity(0.75)),
  //         child: const AutoSizeText(
  //           '함께하는 첫 시작\n\n이우길\n&\n임은하',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(fontSize: 20.0),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildSubtitleText(BuildContext context) {
  //   final dday = DateTime(2024, 9, 7);
  //   final today = DateTime.now();
  //   final difference = dday.difference(today).inDays;

  //   var ddayText = difference > 0 ? '그 날까지 D-$difference' : '';

  //   return Column(
  //     children: [
  //       Text(
  //         '2024.09.07 토요일 오후 04시 50분',
  //         style: TextStyle(fontSize: 18),
  //       ),
  //       SizedBox(height: 10),
  //       AutoSizeText(
  //         ddayText,
  //         style: TextStyle(fontSize: 15, color: Colors.black),
  //         textAlign: TextAlign.center,
  //       ),
  //     ],
  //   );
  // }

  // Widget _buildBorder(BuildContext context) {
  //   return Container(
  //     height: MediaQuery.of(context).size.height * 0.9,
  //     margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
  //     decoration: BoxDecoration(border: Border.all(color: Colors.black38)),
  //   );
  // }
}
