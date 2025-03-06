import 'dart:ui';

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 15, sigmaY: 13),
            child: Image.asset(
              'assets/images/book4.png',
              width: double.infinity,
              fit: BoxFit.cover,
              height: 272,
            ),
          ),
        ),
        Positioned(
          left: (MediaQuery.of(context).size.width - 168) / 2,
          top: (272 - 210) / 2,
          child: SizedBox(
            height: 210,
            width: 168,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Image.asset(
                "assets/images/book4.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          right: 15,
          bottom: 15,
          child: Image.asset(
            'assets/images/fav.png',
            height: 29,
            width: 29,
          ),
        ),
      ],
    );
  }
}
