import 'package:flutter/material.dart';
import 'package:hw2/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Calculator',
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
        ),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      );
}
