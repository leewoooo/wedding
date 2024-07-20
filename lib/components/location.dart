import 'package:flutter/material.dart';
import 'package:wedding/components/header_text.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
      ),
      child: const Column(
        children: [
          HeaderText(
            text: 'LOCATION',
          ),
        ],
      ),
    );
  }
}
