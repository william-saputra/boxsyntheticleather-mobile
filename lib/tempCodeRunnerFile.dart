import 'package:flutter/material.dart';
import 'package:boxsyntheticleather/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF2D46A2), // Set primary color to #2d46a2
        ).copyWith(
          secondary: Color(0xFF2D46A2), // Set secondary color to #2d46a2
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
