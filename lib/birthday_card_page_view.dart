import 'package:flutter/material.dart';
import 'package:flutter_birthday_card/birthday_card.dart';
import 'package:flutter_birthday_card/birthday_card_with_background.dart';
import 'package:flutter_birthday_card/birthday_card_with_lottie.dart';

class BirthdayCardPageView extends StatefulWidget {
  const BirthdayCardPageView({super.key});

  @override
  State<BirthdayCardPageView> createState() => _BirthdayCardPageViewState();
}

class _BirthdayCardPageViewState extends State<BirthdayCardPageView> {
  final pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        BirthdayCard(to: 'kim', from: 'emma'),
        BirthdayCardWithBackground(to: 'kim', from: 'emma'),
        BirthdayCardWithLottie(to: 'kim', from: 'emma')
      ],
    );
  }
}
