import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shahla Abbasi',

      home: const Login(),

      routes: {
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
      },
    );
  }
}