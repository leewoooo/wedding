import 'package:flutter/material.dart';
import 'package:wedding/components/commons/gap.dart';
import 'package:wedding/components/commons/header_text.dart';
import 'package:wedding/constants/color.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const HeaderText(text: '갤러리'),
          Gap.h16,
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 12.0,
            crossAxisSpacing: 12.0,
            childAspectRatio: 3 / 2,
            children: List<int>.generate(15, (int index) => index + 1)
                .map((index) => _GalleryImage(index: index))
                .toList(),
          )
        ],
      ),
    );
  }
}

class _GalleryImage extends StatelessWidget {
  final int index;
  const _GalleryImage({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          useRootNavigator: true,
          builder: (context) {
            int showIndex = index;
            return StatefulBuilder(
              builder: (context, setState) {
                return Dialog(
                  backgroundColor: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  insetPadding: EdgeInsets.zero,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/grid_asset_$showIndex.jpeg',
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {
                              var nextIndex = showIndex - 1;
                              if (nextIndex <= 0) nextIndex = 15;
                              setState(() => showIndex = nextIndex);
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {
                              var nextIndex = showIndex + 1;
                              if (nextIndex > 15) nextIndex = 1;
                              setState(() => showIndex = nextIndex);
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          'assets/images/grid_asset_$index.jpeg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
