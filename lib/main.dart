import 'package:flutter/material.dart';
import 'package:music/Screen/intro_screen.dart';
import 'package:music/Screen/login.dart';
import 'package:music/Screen/splash_screen.dart';
import 'package:music/screen/home_page.dart';
import 'package:music/video_audio/audio_screen.dart';
import 'package:music/video_audio/video.dart';
import 'package:music/video_audio/video_image.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        '/':(context)=>Splash(),
        'intro':(context)=>Intro_Screen(),
        'login':(context)=>Login_Screen(),
        'home':(context)=>Home_Page(),
        'v_img':(context)=>Video_Image(),
        'videos':(context)=>Videos(),
        'a_img':(context)=>Audio_List(),
      },
    ),
  );
}
