import 'package:flutter/material.dart';

class SectionSample extends StatelessWidget {
  final int? value; // Accept a value

  const SectionSample({super.key, required this.value}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Text("Value: $value"); // Display the passed value
  }
}