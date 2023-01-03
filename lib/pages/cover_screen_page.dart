import 'package:coctail/helpers/audio.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../helpers/colors.dart';

class CoverScreenPage extends StatefulWidget {
  const CoverScreenPage({super.key});

  @override
  State<CoverScreenPage> createState() => _CoverScreenPageState();
}

class _CoverScreenPageState extends State<CoverScreenPage> {
  bool music = true;
  @override
  void initState() {
    super.initState();
    checkFoneMusic(music);
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/mood');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueBackground,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/enter.png"),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
