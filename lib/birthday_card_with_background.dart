import 'dart:ui';

import 'package:flutter/material.dart';

class BirthdayCardWithBackground extends StatelessWidget {
  const BirthdayCardWithBackground(
      {super.key, required this.to, required this.from});

  final String to;
  final String from;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment 속성은 childrendl 2개 이상일 때만 적용됨
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/confetti.jpg',
          height: double.maxFinite,
          fit: BoxFit.cover,
        ),
        // column 은 기본적으로 부모의 height 에 fit 하게 expend 한다.
        Container(
          padding: const EdgeInsets.all(32.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Happy',
                  style: TextStyle(
                    fontSize: 72,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Birthday',
                  style: TextStyle(
                    fontSize: 72,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '$to!',
                  style: const TextStyle(
                    fontSize: 72,
                    color: Colors.white,
                  ),
                ),
                // Row 은 기본적으로 부모의 wdith 에 fit 하게 expend 한다.
                Text(
                  'from $from',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
