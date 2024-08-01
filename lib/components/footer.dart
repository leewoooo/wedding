import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/constants/color.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/icons/icon_1.png',
                width: 30.0,
              ),
              Gap.h16,
              const Text(
                '화환은 정중히 사양하겠습니다.\n축하해주시는 마음만 감사히 받겠습니다.',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Gap.h32,
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: FILL_COLOR,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () async {
              await Clipboard.setData(
                const ClipboardData(
                  text: 'https://leewoooo.github.io/wedding/#',
                ),
              ).then(
                (_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('결혼식 링크가 복사되었습니다.'),
                      closeIconColor: Colors.white,
                      showCloseIcon: true,
                    ),
                  );
                },
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.link,
                  size: 16.0,
                  color: GREY_COLOR,
                ),
                Gap.w8,
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: Text(
                    '청첩장 링크 복사',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: GREY_COLOR2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap.h32,
          const Text(
            'made by 우길 & 은하',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 12.0,
            ),
          ),
          Gap.h32,
        ],
      ),
    );
  }
}
