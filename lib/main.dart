import 'package:flutter/material.dart';
import 'package:music/Screen/intro_screen.dart';
import 'package:music/Screen/login.dart';
import 'package:music/Screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        '/':(context)=>Splash(),
        'intro':(context)=>Intro_Screen(),
        'login':(context)=>Login_Screen(),
      },
    ),
  );
}
