import 'package:flutter/material.dart';
import 'package:lab_comsci_by_phanikone/calculate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculate(),
    );
  }
}
