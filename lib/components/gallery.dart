import 'package:flutter/material.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/commons/header_text.dart';
import 'package:wedding/constants/color.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const HeaderText(
            text: '갤러리',
            color: PRIMARY_COLOR,
          ),
          Gap.h16,
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 12.0,
            crossAxisSpacing: 12.0,
            childAspectRatio: 3 / 2,
            children: List<int>.generate(15, (int index) => index + 1).map(
              (index) {
                final asset = 'assets/images/grid_asset_$index.jpeg';
                return _GalleryImage(asset: asset);
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}

class _GalleryImage extends StatelessWidget {
  final String asset;
  const _GalleryImage({
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(asset, fit: BoxFit.cover),
    );
  }
}
