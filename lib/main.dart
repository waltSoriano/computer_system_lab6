// ignore_for_file: unused_import

import 'package:computer_system_lab6/sample/sample.dart';
import 'package:computer_system_lab6/screen_layout/layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Layout());
  }
}
