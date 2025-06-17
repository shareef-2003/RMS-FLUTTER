import 'package:flutter/material.dart';
import 'package:flutter_application_1/LogIn.dart';
import 'package:flutter_application_1/const/colors.dart';


void main() {
  runApp(const WaiterLoginApp());
}

class WaiterLoginApp extends StatelessWidget {
  const WaiterLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waiter Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: color1),
        useMaterial3: true,
      ),
      home: const WaiterLoginScreen(),
    );
  }
}