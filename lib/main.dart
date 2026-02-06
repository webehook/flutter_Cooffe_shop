import 'package:coffie_shop/features/home/views/welcome_view_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Sora"
      ),
      debugShowCheckedModeBanner: false,
      home: WelocmeViewPage(),
    );
  }
}
