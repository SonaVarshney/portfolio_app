import 'package:flutter/material.dart';
import 'package:my_portfolio/project.dart';
import 'package:my_portfolio/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) => const HomeScreen(),
        'projects_page': (context) => const ProjectScreen()
      },
    );
  }
}
