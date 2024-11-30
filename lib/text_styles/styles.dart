import 'package:flutter/material.dart';

TextStyle projectTitle = const TextStyle(
    color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600);
TextStyle header = const TextStyle(
    fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600);
TextStyle loadAndstore = const TextStyle(
    fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600);
TextStyle addAndsub = const TextStyle(
    fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600);
TextStyle historyText = const TextStyle(
    fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500);
TextStyle fromTo = const TextStyle(
    fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500);

TextStyle names = const TextStyle(
    fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600);

Border border1 = Border.all(color: Colors.white, width: 3);

BorderRadius borderRbig = const BorderRadius.only(
    topLeft: Radius.circular(30), bottomRight: Radius.circular(30));
BorderRadius borderRsmall = const BorderRadius.only(
    topLeft: Radius.circular(20), bottomRight: Radius.circular(20));

LinearGradient colorBlue = LinearGradient(colors: [
  const Color.fromARGB(255, 244, 77, 40).withOpacity(0.7),
  const Color.fromARGB(255, 234, 237, 16).withOpacity(0.7),
  const Color.fromARGB(255, 244, 77, 40).withOpacity(0.7),
], begin: Alignment.bottomLeft, end: Alignment.topRight);

LinearGradient colorGreen = LinearGradient(colors: [
  const Color.fromARGB(255, 14, 45, 1).withOpacity(0.7),
  const Color.fromARGB(255, 25, 198, 25).withOpacity(0.7),
  const Color.fromARGB(255, 14, 45, 1).withOpacity(0.7),
], begin: Alignment.bottomLeft, end: Alignment.topRight);

LinearGradient colorblack = LinearGradient(colors: [
  const Color.fromARGB(255, 1, 24, 52).withOpacity(0.7),
  const Color.fromARGB(255, 255, 0, 0).withOpacity(0.7),
  const Color.fromARGB(255, 1, 24, 52).withOpacity(0.7),
], begin: Alignment.bottomLeft, end: Alignment.topRight);

LinearGradient reset = LinearGradient(colors: [
  const Color.fromARGB(255, 172, 54, 3).withOpacity(0.7),
  const Color.fromARGB(255, 255, 247, 0).withOpacity(0.7),
  const Color.fromARGB(255, 172, 54, 3).withOpacity(0.7),
], begin: Alignment.bottomLeft, end: Alignment.topRight);

LinearGradient color = LinearGradient(colors: [
  const Color.fromARGB(255, 1, 24, 52).withOpacity(0.7),
  const Color.fromARGB(255, 255, 0, 0).withOpacity(0.7),
  const Color.fromARGB(255, 255, 0, 0).withOpacity(0.7),
  const Color.fromARGB(255, 255, 0, 0).withOpacity(0.7),
  const Color.fromARGB(255, 1, 24, 52).withOpacity(0.7),
], begin: Alignment.bottomLeft, end: Alignment.topRight);

LinearGradient noColor = LinearGradient(colors: [
  const Color.fromARGB(255, 0, 32, 87).withOpacity(.2),
  const Color.fromARGB(255, 14, 90, 151).withOpacity(.2),
], begin: Alignment.bottomLeft, end: Alignment.topRight);
