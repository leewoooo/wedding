import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/header_text.dart';
import 'package:wedding/constants/color.dart';
import 'dart:html' as html;

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    const addressName = '서울특별시 구로구 새말로 97';
    const address =
        'https://map.naver.com/p/directions/-/14125329.418654,4510050.8743174,%ED%85%8C%ED%81%AC%EB%85%B8%EB%A7%88%ED%8A%B8%20%EC%9B%A8%EB%94%A9%EC%8B%9C%ED%8B%B0,12867934,PLACE_POI/-/transit?c=15.00,0,0,0,dh';

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
      ),
      child: Column(
        children: [
          const HeaderText(
            text: 'LOCATION',
            color: PRIMARY_COLOR,
          ),
          Gap.h32,
          const Text(
            '신도림 웨딩시티 (테크노마트 건물 8층)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          Gap.h8,
          InkWell(
            onTap: () async {
              await Clipboard.setData(const ClipboardData(text: addressName))
                  .then((_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('주소가 복사되었습니다.'),
                    closeIconColor: Colors.white,
                    showCloseIcon: true,
                  ),
                );
              });
            },
            child: const Text(
              '서울특별시 구로구 새말로 97',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              html.window.open(address, 'new tab');
            },
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/images/asset_03.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
