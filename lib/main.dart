import 'package:flutter/material.dart';
import 'package:soul_space/view/screens/dashboard_page.dart';
import 'package:soul_space/view/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const DashboardPage(),
    );
  }
}
