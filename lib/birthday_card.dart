import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key, required this.to, required this.from});

  final String to;
  final String from;

  @override
  Widget build(BuildContext context) {
    // child 가 없을 경우 parent 에게 fit 하게 맞춰짐
    // child 가 있을 경우 child 에게 fit 하게 맞춰짐
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
