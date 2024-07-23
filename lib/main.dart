import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:wedding/components/calendar.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/contact.dart';
import 'package:wedding/components/footer.dart';
import 'package:wedding/components/gallery.dart';
import 'package:wedding/components/header.dart';
import 'package:wedding/components/invitation.dart';
import 'package:wedding/components/location.dart';
import 'package:wedding/layouts/web_app_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white, // 상태 표시줄의 배경 색상
      statusBarIconBrightness: Brightness.dark, // 상태 표시줄 아이콘의 밝기 (어두운 색상)
      systemNavigationBarColor: Colors.white, // 시스템 네비게이션 바의 배경 색상
      systemNavigationBarIconBrightness: Brightness.dark, // 시스템 네비게이션 바 아이콘의 밝기 (어두운 색상)
    ));
    
    return MaterialApp(
      title: '우길 & 은하 결혼해요',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'NanumMyeongjo',
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return WebAppLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gap.h16,
            const Header(),
            const _MainImage(),
            const Invitation(),
            const Gallery(),
            const Location(),
            const Contact(),
            const Calendar(),
            const Footer()
          ],
        ),
      ),
    );
  }
}

class _MainImage extends StatelessWidget {
  const _MainImage();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/asset_02.jpg',
      fit: BoxFit.cover,
    );
  }
}
