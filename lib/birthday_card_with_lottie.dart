import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BirthdayCardWithLottie extends StatelessWidget {
  const BirthdayCardWithLottie(
      {super.key, required this.to, required this.from});

  final String to;
  final String from;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/confetti.jpg',
          height: double.maxFinite,
          fit: BoxFit.cover,
        ),
        Lottie.asset(
          'assets/falling_confetti.json',
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Happy',
                style: TextStyle(
                  fontSize: 72,
                  color: Color.fromRGBO(16, 23, 32, 1),
                ),
              ),
              const Text(
                'Birthday',
                style: TextStyle(
                  fontSize: 72,
                  color: Color.fromRGBO(16, 23, 32, 1),
                ),
              ),
              Text(
                '$to!',
                style: const TextStyle(
                  fontSize: 72,
                  color: Color.fromRGBO(16, 23, 32, 1),
                ),
              ),
              Text(
                'from $from',
                style: const TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(16, 23, 32, 1),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
