import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:wedding/components/calendar.dart';
import 'package:wedding/components/contact.dart';
import 'package:wedding/components/footer.dart';
import 'package:wedding/components/gallery.dart';
import 'package:wedding/components/header.dart';
import 'package:wedding/components/invitation.dart';
import 'package:wedding/components/location.dart';
import 'package:wedding/constants/color.dart';
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
    return MaterialApp(
      title: '우길 & 은하 결혼해요',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'NanumMyeongjo',
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: GREY_COLOR2,
          ),
        ),
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
    return const WebAppLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Header(),
            _MainImage(),
            Invitation(),
            Gallery(),
            Location(),
            Contact(),
            Calendar(),
            Footer()
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
    final cuteString = Uri.base.queryParameters['cute'];
    return Image.asset(
      'assets/images/asset_02_${cuteString != null ? '2' : '1'}.jpeg',
      fit: BoxFit.cover,
    );
  }
}
