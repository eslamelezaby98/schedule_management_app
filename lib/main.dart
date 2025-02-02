import 'package:flutter/material.dart';
import 'package:schedule_management_app/view/main/pages/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Schedule",
      debugShowCheckedModeBanner: false,
      home: MainScreen()
    );
  }
}
