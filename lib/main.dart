import 'package:flutter/material.dart';
import 'package:sum_calculatorapp/home_screen.dart';

void main(){
  runApp(const SumCalculatorApp());
}
class SumCalculatorApp extends StatelessWidget {
  const SumCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
