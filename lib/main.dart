import 'package:flutter/material.dart';
import 'package:flutter_birthday_card/birthday_card.dart';

void main() {
  runApp(const MyApp(name: "Kim"));
}

class MyApp extends StatelessWidget {
  final String name;

  const MyApp({super.key, required this.name});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: BirthdayCard(
          to: 'Kim',
          from: 'Emma',
        ),
      ),
    );
  }
}
