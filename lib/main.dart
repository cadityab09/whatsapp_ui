import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp ui',
      theme: ThemeData(
        primarySwatch: Colors.red,
        tabBarTheme: TabBarTheme(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,

          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        )
      ),
      home: HomeScreen(),
    );
  }
}

