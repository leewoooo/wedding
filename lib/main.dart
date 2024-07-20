import 'package:flutter/material.dart';
import 'package:wedding/components/calendar.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/invitation.dart';
import 'package:wedding/components/location.dart';
import 'package:wedding/components/welcome.dart';
import 'package:wedding/layouts/web_app_layout.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
            const WelcomeWidget(),
            const _MainImage(),
            const Invitation(),
            const Location(),
            const Calendar(),
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
