import 'dart:ui';
import 'package:computer_system_lab6/global_variables/variables.dart';
import 'package:computer_system_lab6/sections/cpu.dart';
import 'package:computer_system_lab6/text_styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final List history = [];

  final List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 10; i++) {
      _controllers.add(TextEditingController());
    }
  }

  void addToHistory(String newSentence) {
    setState(() {
      history.add(newSentence);
    });
  }

  void updateR1(int newValue) {
    setState(() {
      r1 = newValue; // Update the global variable
    });
  }

  void updateR2(int newValue) {
    setState(() {
      r2 = newValue; // Update the global variable
    });
  }

  void updateR3(int newValue) {
    setState(() {
      r3 = newValue; // Update the global variable
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover)),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * .65,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "INSTRUCTION EXECUTION OF A COMPUTER SYSTEM ",
                        style: projectTitle,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(50, 30, 20, 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // C p u
                          Cpu(r1: r1, r2: r2, r3: r3),
                          // M E M O R Y    C O N T A I N E R
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: borderRbig,
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .58,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: borderRbig,
                                        color: const Color.fromRGBO(
                                            224, 224, 224, 0),
                                        border: border1),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "MEMORY",
                                          style: header,
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              //--------------- A 1 -------------------
                                              memoryContainer(context, a1, "A1",
                                                  _controllers[0], (newValue) {
                                                setState(() {
                                                  a1 = newValue;
                                                });
                                              }),
                                              //--------------- A 2 -------------------
                                              memoryContainer(context, a2, "A2",
                                                  _controllers[1], (newValue) {
                                                setState(() {
                                                  a2 = newValue;
                                                });
                                              }),
                                              //--------------- A 3 -------------------
                                              memoryContainer(context, a3, "A3",
                                                  _controllers[2], (newValue) {
                                                setState(() {
                                                  a3 = newValue;
                                                });
                                              }),
                                              //--------------- A 4 -------------------
                                              memoryContainer(context, a4, "A4",
                                                  _controllers[3], (newValue) {
                                                setState(() {
                                                  a4 = newValue;
                                                });
                                              }),
                                              //--------------- A 5 -------------------
                                              memoryContainer(context, a5, "A5",
                                                  _controllers[4], (newValue) {
                                                setState(() {
                                                  a5 = newValue;
                                                });
                                              }),
                                              //--------------- A 6 -------------------
                                              memoryContainer(context, a6, "A6",
                                                  _controllers[5], (newValue) {
                                                setState(() {
                                                  a6 = newValue;
                                                });
                                              }),
                                              //--------------- A 7 -------------------
                                              memoryContainer(context, a7, "A7",
                                                  _controllers[6], (newValue) {
                                                setState(() {
                                                  a7 = newValue;
                                                });
                                              }),
                                              //--------------- A 8 -------------------
                                              memoryContainer(context, a8, "A8",
                                                  _controllers[7], (newValue) {
                                                setState(() {
                                                  a8 = newValue;
                                                });
                                              }),
                                              //--------------- A 9 -------------------
                                              memoryContainer(context, a9, "A9",
                                                  _controllers[8], (newValue) {
                                                setState(() {
                                                  a9 = newValue;
                                                });
                                              }),
                                              //--------------- A 10 -------------------
                                              memoryContainer(
                                                  context,
                                                  a10,
                                                  "A10",
                                                  _controllers[9], (newValue) {
                                                setState(() {
                                                  a10 = newValue;
                                                });
                                              }),
                                            ])
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // I N S T R U C T I O N S
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: borderRbig,
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 20),
                                    width: 1200,
                                    height: MediaQuery.of(context).size.height *
                                        .33,
                                    decoration: BoxDecoration(
                                      borderRadius: borderRbig,
                                      border: border1,
                                      color:
                                          Colors.grey.shade300.withOpacity(0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "INSTRUCTIONS",
                                          style: header,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          width: 1200,
                                          height: 250,
                                          // F O R   T W O   C O L U M N S   V E R T I C A L L Y
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              // L O A D   &   A D D    C O L U M N
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  // L O A D    B U T T O N
                                                  MouseRegion(
                                                    cursor: SystemMouseCursors
                                                        .click,
                                                    onEnter: (_) {
                                                      setState(() {
                                                        isLoadHovering = true;
                                                      });
                                                    },
                                                    onExit: (_) {
                                                      setState(() {
                                                        isLoadHovering = false;
                                                      });
                                                    },
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        if (selectedMemory ==
                                                            "A1") {
                                                          memory = 1;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a1!;
                                                            updateR1(a1!);
                                                            _controllers[0]
                                                                .clear();
                                                            a1 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a1!;
                                                            updateR2(a1!);
                                                            _controllers[0]
                                                                .clear();
                                                            a1 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a1!;
                                                            updateR3(a1!);
                                                            _controllers[0]
                                                                .clear();
                                                            a1 = null;
                                                          }
                                                        } else if (selectedMemory ==
                                                            "A2") {
                                                          memory = 2;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a2!;
                                                            updateR1(a2!);
                                                            _controllers[1]
                                                                .clear();
                                                            a2 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a2!;
                                                            updateR2(a2!);
                                                            _controllers[1]
                                                                .clear();
                                                            a2 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a2!;
                                                            updateR3(a2!);
                                                            _controllers[1]
                                                                .clear();
                                                            a2 = null;
                                                          }
                                                        } else if (selectedMemory ==
                                                            "A3") {
                                                          memory = 3;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a3!;
                                                            updateR1(a3!);
                                                            _controllers[2]
                                                                .clear();
                                                            a3 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a3!;
                                                            updateR2(a3!);
                                                            _controllers[2]
                                                                .clear();
                                                            a3 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a3!;
                                                            updateR3(a3!);
                                                            _controllers[2]
                                                                .clear();
                                                            a3 = null;
                                                          }
                                                        } else if (selectedMemory ==
                                                            "A4") {
                                                          memory = 4;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a4!;
                                                            updateR1(a4!);
                                                            _controllers[3]
                                                                .clear();
                                                            a4 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a4!;
                                                            updateR2(a4!);
                                                            _controllers[3]
                                                                .clear();
                                                            a4 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a4!;
                                                            updateR3(a4!);
                                                            _controllers[3]
                                                                .clear();
                                                            a4 = null;
                                                          }
                                                        } else if (selectedMemory ==
                                                            "A5") {
                                                          memory = 5;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a5!;
                                                            updateR1(a5!);
                                                            _controllers[4]
                                                                .clear();
                                                            a5 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a5!;
                                                            updateR2(a5!);
                                                            _controllers[4]
                                                                .clear();
                                                            a5 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a5!;
                                                            updateR3(a5!);
                                                            _controllers[4]
                                                                .clear();
                                                            a5 = null;
                                                          }
                                                        } else if (selectedMemory ==
                                                            "A6") {
                                                          memory = 6;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a6!;
                                                            updateR1(a6!);
                                                            _controllers[5]
                                                                .clear();
                                                            a6 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a6!;
                                                            updateR2(a6!);
                                                            _controllers[5]
                                                                .clear();
                                                            a6 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a6!;
                                                            updateR3(a6!);
                                                            _controllers[5]
                                                                .clear();
                                                            a6 = null;
                                                          }
                                                        } else if (selectedMemory ==
                                                            "A7") {
                                                          memory = 7;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a7!;
                                                            updateR1(a7!);
                                                            _controllers[6]
                                                                .clear();
                                                            a7 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a7!;
                                                            updateR2(a7!);
                                                            _controllers[6]
                                                                .clear();
                                                            a6 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a7!;
                                                            updateR3(a7!);
                                                            _controllers[6]
                                                                .clear();
                                                            a7 = null;
                                                          }
                                                        } else if (selectedMemory ==
                                                            "A8") {
                                                          memory = 8;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a8!;
                                                            updateR1(a8!);
                                                            _controllers[7]
                                                                .clear();
                                                            a8 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a8!;
                                                            updateR2(a8!);
                                                            _controllers[7]
                                                                .clear();
                                                            a8 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a8!;
                                                            updateR3(a8!);
                                                            _controllers[7]
                                                                .clear();
                                                            a8 = null;
                                                          }
                                                        } else if (selectedMemory ==
                                                            "A9") {
                                                          memory = 9;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a9!;
                                                            updateR1(a9!);
                                                            _controllers[8]
                                                                .clear();
                                                            a9 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a9!;
                                                            updateR2(a9!);
                                                            _controllers[8]
                                                                .clear();
                                                            a9 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a9!;
                                                            updateR3(a9!);
                                                            _controllers[8]
                                                                .clear();
                                                            a9 = null;
                                                          }
                                                        } else if (selectedMemory ==
                                                            "A10") {
                                                          memory = 10;
                                                          if (selectedRegister ==
                                                              "R1") {
                                                            register = 1;
                                                            value = a10!;
                                                            updateR1(a10!);
                                                            _controllers[9]
                                                                .clear();
                                                            a10 = null;
                                                          } else if (selectedRegister ==
                                                              "R2") {
                                                            register = 2;
                                                            value = a10!;
                                                            updateR2(a10!);
                                                            _controllers[9]
                                                                .clear();
                                                            a10 = null;
                                                          } else if (selectedRegister ==
                                                              "R3") {
                                                            register = 3;
                                                            value = a10!;
                                                            updateR3(a10!);
                                                            _controllers[9]
                                                                .clear();
                                                            a10 = null;
                                                          }
                                                        }
                                                        addToHistory(
                                                            "LOAD: R$register <-- A$memory [Value: $value]");
                                                      },
                                                      child: Container(
                                                        width: 300,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            gradient:
                                                                isLoadHovering == true
                                                                    ? color
                                                                    : colorblack,
                                                            borderRadius:
                                                                borderRbig,
                                                            border: border1),
                                                        child: Center(
                                                          child: Text(
                                                            "LOAD",
                                                            style: loadAndstore,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 300,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "from:",
                                                          style: fromTo,
                                                        ),
                                                        Text(
                                                          "to:",
                                                          style: fromTo,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  //------------------DROP DOWN BUTTONS
                                                  SizedBox(
                                                    width: 300,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        DropdownButton(
                                                          items: [
                                                            DropdownMenuItem(
                                                                value: "A1",
                                                                child: Text(
                                                                  "A1",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A2",
                                                                child: Text(
                                                                  "A2",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A3",
                                                                child: Text(
                                                                  "A3",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A4",
                                                                child: Text(
                                                                  "A4",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A5",
                                                                child: Text(
                                                                  "A5",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A6",
                                                                child: Text(
                                                                  "A6",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A7",
                                                                child: Text(
                                                                  "A7",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A8",
                                                                child: Text(
                                                                  "A8",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A9",
                                                                child: Text(
                                                                  "A9",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A10",
                                                                child: Text(
                                                                  "A10",
                                                                  style: names,
                                                                )),
                                                          ],
                                                          value: selectedMemory,
                                                          dropdownColor:
                                                              Colors.black,
                                                          onChanged:
                                                              (String? value) {
                                                            setState(() {
                                                              selectedMemory =
                                                                  value!;
                                                            });
                                                          },
                                                        ),
                                                        DropdownButton(
                                                          items: [
                                                            DropdownMenuItem(
                                                                value: "R1",
                                                                child: Text(
                                                                  "R1",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "R2",
                                                                child: Text(
                                                                  "R2",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "R3",
                                                                child: Text(
                                                                  "R3",
                                                                  style: names,
                                                                )),
                                                          ],
                                                          value:
                                                              selectedRegister,
                                                          dropdownColor:
                                                              Colors.black,
                                                          onChanged:
                                                              (String? value) {
                                                            setState(() {
                                                              selectedRegister =
                                                                  value!;
                                                            });
                                                          },
                                                        )
                                                      ],
                                                    ),
                                                  ),

                                                  // A D D   B U T T O N
                                                  MouseRegion(
                                                    cursor: SystemMouseCursors
                                                        .click,
                                                    onEnter: (_) {
                                                      setState(() {
                                                        isAddHovering = true;
                                                      });
                                                    },
                                                    onExit: (_) {
                                                      setState(() {
                                                        isAddHovering = false;
                                                      });
                                                    },
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          r3 = (r1! + r2!);
                                                          if (r1 != 0 &&
                                                              r2 != 0 &&
                                                              r3 != 0) {
                                                            setState(() {
                                                              addToHistory(
                                                                  "ADD: R3 <-- R2 [Value: $r2] +  R1 [Value: $r1]");
                                                            });
                                                          }
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 300,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            gradient:
                                                                isAddHovering == true
                                                                    ? color
                                                                    : colorblack,
                                                            borderRadius:
                                                                borderRbig,
                                                            border: border1),
                                                        child: Center(
                                                            child: Text(
                                                          "ADD R1, R2 --> R3",
                                                          style: addAndsub,
                                                        )),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              // S T O R E   &    S U B    C O L U M N
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  // S T O R E     B U T T O N
                                                  MouseRegion(
                                                    onEnter: (_) {
                                                      setState(() {
                                                        isStoreHovering = true;
                                                      });
                                                    },
                                                    onExit: (_) {
                                                      setState(() {
                                                        isStoreHovering = false;
                                                      });
                                                    },
                                                    cursor: SystemMouseCursors
                                                        .click,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        int register = 1;
                                                        int value = 0;
                                                        int memory = 1;
                                                        // SELECTED FROM R1
                                                        if (selectedRegister2 ==
                                                            "R1") {
                                                          register = 1;
                                                          if (selectedMemory2 ==
                                                              "A1") {
                                                            memory =
                                                                1; // Assign memory

                                                            a1 = r1;
                                                            value = r1!;
                                                            _controllers[0]
                                                                    .text =
                                                                a1.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A2") {
                                                            memory =
                                                                2; // Assign memory

                                                            a2 = r1;
                                                            value = r1!;
                                                            _controllers[1]
                                                                    .text =
                                                                a2.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A3") {
                                                            value = r3!;
                                                            memory =
                                                                3; // Assign memory

                                                            a3 = r1;
                                                            _controllers[2]
                                                                    .text =
                                                                a3.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A4") {
                                                            value = r1!;
                                                            memory =
                                                                4; // Assign memory

                                                            a4 = r1;
                                                            _controllers[3]
                                                                    .text =
                                                                a4.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A5") {
                                                            value = r1!;
                                                            memory =
                                                                5; // Assign memory

                                                            a5 = r1;
                                                            _controllers[4]
                                                                    .text =
                                                                a5.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A6") {
                                                            value = r1!;
                                                            memory = 6;

                                                            a6 = r1;
                                                            _controllers[5]
                                                                    .text =
                                                                a6.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A7") {
                                                            value = r1!;
                                                            memory = 7;

                                                            a7 = r1;
                                                            _controllers[6]
                                                                    .text =
                                                                a7.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A8") {
                                                            value = r1!;
                                                            memory = 8;

                                                            a8 = r1;
                                                            _controllers[7]
                                                                    .text =
                                                                a8.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A9") {
                                                            value = r1!;
                                                            memory = 9;

                                                            a9 = r1;
                                                            _controllers[8]
                                                                    .text =
                                                                a9.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A10") {
                                                            value = r1!;
                                                            memory = 10;

                                                            a10 = r1;
                                                            _controllers[9]
                                                                    .text =
                                                                a10.toString();
                                                          } else if (selectedMemory2 ==
                                                              "R2") {
                                                            updateR2(r1!);
                                                            value = r1!;
                                                            memory = 2;
                                                          } else if (selectedMemory2 ==
                                                              "R1") {
                                                            updateR1(r1!);
                                                            value = r1!;
                                                            memory = 1;
                                                          } else if (selectedMemory2 ==
                                                              "R3") {
                                                            updateR3(r1!);
                                                            value = r1!;
                                                            memory = 3;
                                                          }
                                                        }
                                                        // SELECTED FROM R2
                                                        else if (selectedRegister2 ==
                                                            "R2") {
                                                          register = 2;
                                                          if (selectedMemory2 ==
                                                              "A1") {
                                                            value = r2!;
                                                            memory = 1;

                                                            a1 = r2;
                                                            _controllers[0]
                                                                    .text =
                                                                a1.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A2") {
                                                            value = r2!;
                                                            memory = 2;
                                                            register = 2;
                                                            a2 = r2;
                                                            _controllers[1]
                                                                    .text =
                                                                a2.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A3") {
                                                            value = r2!;
                                                            memory = 3;
                                                            register = 2;
                                                            a3 = r2;
                                                            _controllers[2]
                                                                    .text =
                                                                a3.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A4") {
                                                            value = r2!;
                                                            memory = 4;
                                                            register = 2;
                                                            a4 = r2;
                                                            _controllers[3]
                                                                    .text =
                                                                a4.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A5") {
                                                            value = r2!;
                                                            memory = 5;
                                                            register = 2;
                                                            a5 = r2;
                                                            _controllers[4]
                                                                    .text =
                                                                a5.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A6") {
                                                            value = r2!;
                                                            memory = 6;
                                                            register = 2;
                                                            a6 = r2;
                                                            _controllers[5]
                                                                    .text =
                                                                a6.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A7") {
                                                            value = r2!;
                                                            memory = 7;
                                                            register = 2;
                                                            a7 = r2;
                                                            _controllers[6]
                                                                    .text =
                                                                a7.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A8") {
                                                            value = r2!;
                                                            memory = 8;
                                                            register = 2;
                                                            a8 = r2;
                                                            _controllers[7]
                                                                    .text =
                                                                a8.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A9") {
                                                            value = r2!;
                                                            memory = 9;

                                                            a9 = r2;
                                                            _controllers[8]
                                                                    .text =
                                                                a9.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A10") {
                                                            value = r2!;
                                                            memory = 10;

                                                            a10 = r2;
                                                            _controllers[9]
                                                                    .text =
                                                                a10.toString();
                                                          } else if (selectedMemory2 ==
                                                              "R1") {
                                                            value = r2!;
                                                            memory = 1;
                                                            r1 = r2;
                                                          } else if (selectedMemory2 ==
                                                              "R2") {
                                                            value = r2!;
                                                            memory = 2;
                                                            r1 = r2;
                                                          } else if (selectedMemory2 ==
                                                              "R3") {
                                                            value = r2!;
                                                            memory = 3;
                                                            r3 = r2;
                                                          }
                                                        }
                                                        // SELECTED FROM R3
                                                        else if (selectedRegister2 ==
                                                            "R3") {
                                                          register = 3;
                                                          if (selectedMemory2 ==
                                                              "A1") {
                                                            value = r3!;
                                                            memory = 1;

                                                            a1 = r3;
                                                            _controllers[0]
                                                                    .text =
                                                                a1.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A2") {
                                                            value = r3!;
                                                            memory = 2;

                                                            a2 = r3;
                                                            _controllers[1]
                                                                    .text =
                                                                a2.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A3") {
                                                            value = r3!;
                                                            memory = 3;

                                                            a3 = r3;
                                                            _controllers[2]
                                                                    .text =
                                                                a3.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A4") {
                                                            value = r3!;
                                                            memory = 4;

                                                            a4 = r3;
                                                            _controllers[3]
                                                                    .text =
                                                                a4.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A5") {
                                                            value = r3!;
                                                            memory = 5;

                                                            a5 = r3;
                                                            _controllers[4]
                                                                    .text =
                                                                a5.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A6") {
                                                            value = r3!;
                                                            memory = 6;

                                                            a6 = r2;
                                                            _controllers[5]
                                                                    .text =
                                                                a6.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A7") {
                                                            value = r3!;
                                                            memory = 7;

                                                            a7 = r3;
                                                            _controllers[6]
                                                                    .text =
                                                                a7.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A8") {
                                                            value = r3!;
                                                            memory = 8;

                                                            a8 = r3;
                                                            _controllers[7]
                                                                    .text =
                                                                a8.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A9") {
                                                            value = r3!;
                                                            memory = 9;

                                                            a9 = r3;
                                                            _controllers[8]
                                                                    .text =
                                                                a9.toString();
                                                          } else if (selectedMemory2 ==
                                                              "A10") {
                                                            value = r3!;
                                                            memory = 10;

                                                            a10 = r3;
                                                            _controllers[9]
                                                                    .text =
                                                                a10.toString();
                                                          } else if (selectedMemory2 ==
                                                              "R1") {
                                                            value = r3!;
                                                            memory = 1;
                                                            r1 = r3;
                                                            // Update relevant controller or UI as needed
                                                          } else if (selectedMemory2 ==
                                                              "R2") {
                                                            value = r3!;
                                                            memory = 2;
                                                            r2 = r3;
                                                            // Update relevant controller or UI as needed
                                                          } else if (selectedMemory2 ==
                                                              "R3") {
                                                            value = r3!;
                                                            memory = 3;
                                                            r3 = r3;
                                                            // Update relevant controller or UI as needed
                                                          }
                                                        }

                                                        if (selectedMemory2 == "R1" ||
                                                            selectedMemory2 ==
                                                                "R2" ||
                                                            selectedMemory2 ==
                                                                "R3") {
                                                          addToHistory(
                                                              "STORED: R$memory <-- R$register [Value: $value]");
                                                        } else {
                                                          addToHistory(
                                                              "STORED: A$memory <-- R$register [Value: $value]");
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 300,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            gradient:
                                                                isStoreHovering == true
                                                                    ? color
                                                                    : colorblack,
                                                            borderRadius:
                                                                borderRbig,
                                                            border: border1),
                                                        child: Center(
                                                          child: Text(
                                                            "STORE",
                                                            style: loadAndstore,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 300,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "from:",
                                                          style: fromTo,
                                                        ),
                                                        Text(
                                                          "to:",
                                                          style: fromTo,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 300,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        DropdownButton<String>(
                                                          items: [
                                                            DropdownMenuItem(
                                                              value: "R1",
                                                              child: Text(
                                                                "R1",
                                                                style: names,
                                                              ),
                                                            ),
                                                            DropdownMenuItem(
                                                              value: "R2",
                                                              child: Text(
                                                                "R2",
                                                                style: names,
                                                              ),
                                                            ),
                                                            DropdownMenuItem(
                                                              value: "R3",
                                                              child: Text(
                                                                "R3",
                                                                style: names,
                                                              ),
                                                            ),
                                                          ],
                                                          value:
                                                              selectedRegister2, // Current selected value
                                                          dropdownColor:
                                                              Colors.black,
                                                          onChanged: (String?
                                                              newValue) {
                                                            setState(() {
                                                              selectedRegister2 =
                                                                  newValue!; // Update selected value
                                                            });
                                                          },
                                                        ),
                                                        DropdownButton(
                                                          items: [
                                                            DropdownMenuItem(
                                                                value: "A1",
                                                                child: Text(
                                                                  "A1",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A2",
                                                                child: Text(
                                                                  "A2",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A3",
                                                                child: Text(
                                                                  "A3",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A4",
                                                                child: Text(
                                                                  "A4",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A5",
                                                                child: Text(
                                                                  "A5",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A6",
                                                                child: Text(
                                                                  "A6",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A7",
                                                                child: Text(
                                                                  "A7",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A8",
                                                                child: Text(
                                                                  "A8",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A9",
                                                                child: Text(
                                                                  "A9",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "A10",
                                                                child: Text(
                                                                  "A10",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "R1",
                                                                child: Text(
                                                                  "R1",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "R2",
                                                                child: Text(
                                                                  "R2",
                                                                  style: names,
                                                                )),
                                                            DropdownMenuItem(
                                                                value: "R3",
                                                                child: Text(
                                                                  "R3",
                                                                  style: names,
                                                                )),
                                                          ],
                                                          value:
                                                              selectedMemory2,
                                                          dropdownColor:
                                                              Colors.black,
                                                          onChanged:
                                                              (String? value) {
                                                            setState(() {
                                                              selectedMemory2 =
                                                                  value!;
                                                            });
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  // SUBTRACT BUTTON
                                                  MouseRegion(
                                                    cursor: SystemMouseCursors
                                                        .click,
                                                    onEnter: (_) {
                                                      setState(() {
                                                        isSubHovering = true;
                                                      });
                                                    },
                                                    onExit: (_) {
                                                      setState(() {
                                                        isSubHovering = false;
                                                      });
                                                    },
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          r3 = (r1! - r2!);

                                                          addToHistory(
                                                              "R3 <-- R1 [$r1] - R2 [$r2]");
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 300,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              borderRbig,
                                                          border: border1,
                                                          gradient:
                                                              isSubHovering ==
                                                                      true
                                                                  ? color
                                                                  : colorblack,
                                                        ),
                                                        child: Center(
                                                            child: Text(
                                                          "SUB R1, R2 --> R3",
                                                          style: addAndsub,
                                                        )),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // history
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  width: MediaQuery.of(context).size.width * .35,
                  height: 850,
                  child: ClipRRect(
                    borderRadius: borderRbig,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: borderRbig,
                            border: border1,
                            color: Colors.grey.shade300.withOpacity(0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  "HISTORY",
                                  style: header,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                for (int i = 0; i < history.length; i++)
                                  Text(
                                    '${i + 1}. ${history[i]}',
                                    style: historyText,
                                  ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: borderRbig,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          r1 = r2 = r3 = a1 = a2 =
                              a3 = a4 = a5 = a6 = a7 = a8 = a9 = a10 = null;

                          for (var controller in _controllers) {
                            controller.clear();
                          }
                          history.clear();
                        });
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: reset,
                            borderRadius: borderRbig,
                            border: border1,
                          ),
                          width: 300,
                          height: 70,
                          child: Center(
                              child: Text(
                            "RESET",
                            style: names,
                          )),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget memoryContainer(BuildContext context, int? a, String b,
    TextEditingController controller, Function(int) onChanged) {
  // Check if the input value is empty or not a valid integer
  bool isInputEmpty =
      controller.text.isEmpty || int.tryParse(controller.text) == null;

  return Container(
    padding: const EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width * 0.047,
    height: MediaQuery.of(context).size.height * 0.13,
    decoration: BoxDecoration(
        gradient: isInputEmpty ? noColor : colorGreen, // Change here
        borderRadius: borderRsmall,
        border: border1),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          b,
          style: names,
        ),
        TextField(
            style: names,
            controller: controller,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter
                  .digitsOnly // Restrict input to digits only
            ],
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              hintText: '',
            ),
            onChanged: (value) {
              onChanged(int.tryParse(value) ?? 0);
            }),
      ],
    ),
  );
}
