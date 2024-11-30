import 'dart:ui';

import 'package:computer_system_lab6/text_styles/styles.dart';
import 'package:flutter/material.dart';

class Cpu extends StatelessWidget {
  final int? r1;
  final int? r2;
  final int? r3;
  const Cpu({super.key, required this.r1, required this.r2, required this.r3});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //C P U    C O N T A I N E R
        ClipRRect(
          borderRadius: borderRbig,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              width: MediaQuery.of(context).size.width * .24,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: borderRbig,
                  color: const Color.fromRGBO(255, 255, 255, 0),
                  border: Border.all(width: 3, color: Colors.white)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "CPU",
                    style: header,
                  ),
                  // R O W      F O R      C P U      C O N T A I N E R S
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // F O R    R 1
                      cpuContainer(context, r1, "R1"),
                      // F O R    R 2
                      cpuContainer(context, r2, "R2"),
                      // F O R    R 2
                      cpuContainer(context, r3, "R3"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget cpuContainer(BuildContext context, int? r, String name) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.047,
    height: MediaQuery.of(context).size.height * 0.13,
    decoration: BoxDecoration(
        borderRadius: borderRsmall,
        border: border1,
        gradient: r == null ? noColor : colorBlue),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          name,
          style: names,
        ),
        Text(
          r.toString(),
          style: names,
        )
      ],
    ),
  );
}
