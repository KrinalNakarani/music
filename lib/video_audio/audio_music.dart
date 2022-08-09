import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music/model/datamodel.dart';
import '../model/data.dart';
import '../model/datamodel.dart';

class songs extends StatefulWidget {
  const songs({Key? key}) : super(key: key);

  @override
  State<songs> createState() => _songsState();
}

class _songsState extends State<songs> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  bool isplay = false;
  Duration tdu = Duration(seconds: 0);
  Duration cdu = Duration(seconds: 0);
  Icon iconmu = Icon(
    Icons.play_circle,
    size: 50,
  );
  Imagelist? m1;

  @override
  void initState() {
    super.initState();
    a_music(audiolink!);
    print("======================= $audiolink");
  }

  void a_music(String path) async {
    await assetsAudioPlayer.open(
      Audio(path),
      autoStart: false,
      showNotification: true,
    );
    assetsAudioPlayer.current.listen((event) {
      tdu = event!.audio.duration;
    });
  }

  @override
  Widget build(BuildContext context) {
    m1 = ModalRoute.of(context)!.settings.arguments as Imagelist;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Now playing",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Opacity(
                  opacity: 0.6,
                  child: Image.asset(
                    "${m1!.img}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 300,
                  width: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "${m1!.img}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 400,
                  width: 300,
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "${m1!.name}",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 500,
                  width: 500,
                  alignment: Alignment.bottomCenter,
                  child: IconButton(
                    onPressed: () {
                      play_a();
                    },
                    icon: iconmu,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 650,
                  width: 300,
                  alignment: Alignment.bottomCenter,
                  child: PlayerBuilder.currentPosition(
                      player: assetsAudioPlayer,
                      builder: (context, duration) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Slider(
                              value: duration.inSeconds.toDouble(),
                              onChanged: (value) {
                                assetsAudioPlayer
                                    .seek(Duration(seconds: value.toInt()));
                                print("========================================== $cdu");
                              },
                              max: tdu.inSeconds.toDouble(),
                              activeColor: Colors.black,
                              inactiveColor: Colors.white,
                            ),
                            Text(
                              "$duration/$tdu",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void play_a() async {
    if (isplay==false) {
      await assetsAudioPlayer.play();
      setState(() {
        isplay = true;
        iconmu = Icon(
          Icons.pause_circle,
          size: 50,
        );
      });
    } else {
      assetsAudioPlayer.pause();
      setState(() {
        isplay = false;
        iconmu = Icon(
          Icons.play_circle,
          size: 50,
        );
      });
    }
  }
}
