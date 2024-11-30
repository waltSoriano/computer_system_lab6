import 'package:computer_system_lab6/sample/sample_variable.dart';
import 'package:computer_system_lab6/sample/section_sample.dart';
import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  void updateR1(int newValue) {
    setState(() {
      j = newValue; // Update the global variable
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Global Variable Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('R1: $j'), // Display the global variable
            GestureDetector(
              onTap: () {
                if (b == "A1") {
                  updateR1(a!);
                }

                // Update the global variable
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                width: 100,
                height: 100,
                child: const Text("Value"),
              ),
            ),
            TextField(
                decoration: const InputDecoration(hintText: 'Enter a value'),
                onChanged: (value) {
                  a = int.parse(value);
                }),
             SectionSample(value: j)
          ],
        ),
      ),
    );
  }
}
