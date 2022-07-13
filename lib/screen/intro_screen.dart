import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({Key? key}) : super(key: key);

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Huge music store ",
              body: "Lorem Ipsum is simply dummy text of the "
                  "printing and typesetting industry. Lorem Ipsum has been the industry's "
                  "standard dummy text ever since the 1500",
              image: Image.asset("assets/images/ss1.png",height: 300,),
            ),
            PageViewModel(
              title: "podcasts",
              body: "Lorem Ipsum is simply dummy text of the "
                  "printing and typesetting industry. Lorem Ipsum has been the industry's "
                  "standard dummy text ever since the 1500",
              image: Image.asset("assets/images/ss2.png",height: 300,),
            ),
            PageViewModel(
              title:"High quality audio",
              body: "Lorem Ipsum is simply dummy text of the "
                  "printing and typesetting industry. Lorem Ipsum has been the industry's "
                  "standard dummy text ever since the 1500",
              image: Image.asset("assets/images/ss3.png",height: 300,),
            ),
          ],
          showSkipButton: false,
          showBackButton: true,
          done:Text("Done") ,
          back: Icon(Icons.arrow_back),
          next: Icon(Icons.arrow_forward),
          onDone:(){
            Navigator.pushNamed(context, 'login');
          } ,
          skip: Text("Skip"),
        ),
      ),
    );
  }
}
