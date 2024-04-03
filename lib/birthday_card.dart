import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key, required this.to, required this.from});

  final String to;
  final String from;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Happy',
            style: TextStyle(fontSize: 72),
          ),
          Text(
            'Birthday',
            style: TextStyle(fontSize: 72),
          ),
          Text(
            '$to!',
            style: TextStyle(fontSize: 72),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'from $from',
                style: TextStyle(fontSize: 24),
              ),
            ],
          )
        ],
      ),
    );
  }
}
