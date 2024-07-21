import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final Color color;

  const HeaderText({
    super.key,
    required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: color,
      ),
    );
  }
}
