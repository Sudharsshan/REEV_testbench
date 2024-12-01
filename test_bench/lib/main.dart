import 'package:flutter/material.dart';

import 'package:test_bench/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Padding(padding: EdgeInsets.all(20), child: HomePage())),
      ),
    );
  }
}
