import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key, required this.to, required this.from});

  final String to;
  final String from;

  @override
  Widget build(BuildContext context) {
    // 기본동작이 parent 를 fit 하게 expend 함
    return Container(
      padding: const EdgeInsets.all(24.0),
      // Column 은 기본적으로 부모의 height 에 fit 하게 expend 한다.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Happy',
            style: TextStyle(fontSize: 72),
          ),
          const Text(
            'Birthday',
            style: TextStyle(fontSize: 72),
          ),
          Text(
            '$to!',
            style: const TextStyle(fontSize: 72),
          ),
          // Row 은 기본적으로 부모의 wdith 에 fit 하게 expend 한다.
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'from $from',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          )
        ],
      ),
    );
  }
}
