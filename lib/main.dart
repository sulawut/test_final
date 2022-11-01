import 'package:flutter/material.dart';
import 'package:test_final/pages/worldcup_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WorldListPage(title: 'Home Page'),
    );
  }
}