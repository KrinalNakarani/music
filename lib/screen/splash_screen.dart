import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music/Screen/intro_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 5), =>
    //     Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)
    // =>
    //     Intro_Screen(),
    // )
    // )
    // );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(
            child: Container(
              height: 250,
              width: 250,
              child: Image.asset("assets/images/ssss.png"),
            ),
          ),
        ),
      ),
    );
  }
}
