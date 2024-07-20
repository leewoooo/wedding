import 'package:flutter/material.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/header_text.dart';
import 'package:wedding/constants/color.dart';

class Invitation extends StatelessWidget {
  final String backgroundImage = 'assets/images/paper_background_2.jpg';
  const Invitation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const HeaderText(
            text: 'INVITATION',
            color: PRIMARY_COLOR,
          ),
          Gap.h32,
          const _ThanksText(),
          const _SubImage(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: _HeroInfo(
                      division: '신랑',
                      name: '이우길',
                      familyInfo: '이필주 · 송효숙 의 장남',
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                  ),
                  Expanded(
                    child: _HeroInfo(
                      division: '신부',
                      name: '임은하',
                      familyInfo: '임동철 · 오주지 의 차녀',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ThanksText extends StatelessWidget {
  const _ThanksText();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '늘 곁에 아껴주셨던 고마운 분들을 모십니다.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Gap.h16,
        const Text(
          '저희 두 사람이 함께 맞이하는 열 번째 가을날,',
        ),
        Gap.h4,
        const Text(
          '소중한 분들과 함께 평생을 약속하려 합니다.',
        ),
        Gap.h16,
        const Text(
          '믿음의가정을 세워가는 첫 걸음,',
        ),
        Gap.h4,
        const Text(
          '함께 축복해 주시면 더 없는 기쁨으로 간직하겠습니다.',
        ),
      ],
    );
  }
}

class _SubImage extends StatelessWidget {
  const _SubImage();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.asset(
          'assets/images/asset_01.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _HeroInfo extends StatelessWidget {
  final String division;
  final String name;
  final String familyInfo;

  const _HeroInfo({
    required this.division,
    required this.name,
    required this.familyInfo,
  });

  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
      color: Colors.black,
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '$division\t',
              style: defaultTextStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              name,
              style: defaultTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        Gap.h8,
        Text(
          familyInfo,
          style: defaultTextStyle.copyWith(
            fontSize: 12.0,
          ),
        )
      ],
    );
  }
}
