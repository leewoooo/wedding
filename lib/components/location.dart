import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/commons/header_text.dart';
import 'package:wedding/constants/color.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(32.0),
      child: const Column(
        children: [
          _Header(),
          _Map(),
          _TransportInfos(),
        ],
      ),
    );
  }
}

class _TransportInfos extends StatelessWidget {
  const _TransportInfos();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _renderTitle(title: '주차 안내'),
        Gap.h8,
        const Text(
          '테크노마트 지하주차장 이용(B3~B7)',
        ),
        Gap.h32,
        _renderTitle(title: '지하철 이용시'),
        Gap.h8,
        const Text(
          '1호선 2호선 신도림역',
        ),
        Gap.h4,
        const Text(
          '(신도림역 3번출구 테크노마트 판매동 지하1층과 직접 연결)',
        ),
        Gap.h32,
        _renderTitle(title: '버스 이용 시'),
        Gap.h8,
        _renderSubTitle(title: '신도림역 (17-102) 정류장 하차'),
        Gap.h4,
        const Text(
          '(지하철 신도림역 3번출구 쪽)',
        ),
        Gap.h16,
        ...[
          '지선 : 5619, 6411, 6511, 6611',
          '직행 : 5200',
          '마을 : 영등포09, 영등포12, 영등포13'
        ].map((it) => _renderBusInfo(info: it)),
        Gap.h16,
        _renderSubTitle(title: '신도림역 (17-001) 정류장 하차'),
        Gap.h4,
        const Text(
          '(지하철 신도림역 1번출구 쪽 하차 후 지하보도 이용하여 지하철 3번출구 방면 으로 이동)',
        ),
        Gap.h16,
        ...[
          '간선 : 160, 503, 600, 660,662',
          '지선 : 5615, 5714, 6512, 6515, 6516 6637, 6640A, 6713',
          '직행 : 301, 320',
          '일반 : 10, 11-1, 11-2, 83, 88, 530'
        ].map((it) => _renderBusInfo(info: it)),
      ],
    );
  }

  Widget _renderTitle({
    required String title,
  }) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
        color: Colors.black,
      ),
    );
  }

  Widget _renderSubTitle({
    required String title,
  }) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _renderBusInfo({
    required String info,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          info,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        Gap.h4,
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    const addressName = '서울특별시 구로구 새말로 97';

    return Column(
      children: [
        const HeaderText(
          text: '오시는 길',
          color: PRIMARY_COLOR,
        ),
        Gap.h16,
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
      ],
    );
  }
}

class _Map extends StatelessWidget {
  const _Map();

  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
      color: Colors.black,
    );

    const naverAddress =
        'https://map.naver.com/p/directions/-/14125329.418654,4510050.8743174,%ED%85%8C%ED%81%AC%EB%85%B8%EB%A7%88%ED%8A%B8%20%EC%9B%A8%EB%94%A9%EC%8B%9C%ED%8B%B0,12867934,PLACE_POI/-/transit?c=15.00,0,0,0,dh';
    onTapNaverMap() async => await launchUrl(Uri.parse(naverAddress));

    const kakaoAddress =
        'https://map.kakao.com/?map_type=TYPE_MAP&target=car&rt=,,475734,1113230&rt1=&rt2=%EC%9B%A8%EB%94%A9%EC%8B%9C%ED%8B%B0%20%EC%8B%A0%EB%8F%84%EB%A6%BC%EC%A0%90&rtIds=,326511102';
    onTapKakaoMap() async => await launchUrl(Uri.parse(kakaoAddress));

    const googleAddress =
        'https://www.google.co.kr/maps/dir//%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+%EA%B5%AC%EB%A1%9C%EA%B5%AC+%EC%83%88%EB%A7%90%EB%A1%9C+97+%EC%9B%A8%EB%94%A9%EC%8B%9C%ED%8B%B0+%EC%8B%A0%EB%8F%84%EB%A6%BC%EC%A0%90/data=!4m8!4m7!1m0!1m5!1m1!1s0x357c9e6937008aa5:0x264f4474edc5342a!2m2!1d126.8902185!2d37.5070431?hl=ko&entry=ttu';
    onTapGoogleMap() async => await launchUrl(Uri.parse(googleAddress));

    return InkWell(
      onTap: onTapNaverMap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32.0,
        ),
        child: Column(
          children: [
            const Divider(),
            Gap.h8,
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                'assets/images/asset_03.png',
                fit: BoxFit.cover,
              ),
            ),
            Gap.h16,
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: onTapKakaoMap,
                      child: const Text(
                        '카카오 맵',
                        textAlign: TextAlign.center,
                        style: defaultTextStyle,
                      ),
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: InkWell(
                      onTap: onTapNaverMap,
                      child: const Text(
                        '네이버 지도',
                        textAlign: TextAlign.center,
                        style: defaultTextStyle,
                      ),
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: InkWell(
                      onTap: onTapGoogleMap,
                      child: const Text(
                        '구글 맵',
                        textAlign: TextAlign.center,
                        style: defaultTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap.h8,
            const Divider(),
          ],
        ),
      ),
    );
  }
}
