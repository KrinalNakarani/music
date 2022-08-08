import 'package:flutter/material.dart';
import 'package:music/model/datamodel.dart';

import '../model/data.dart';

class Audio_List extends StatefulWidget {
  const Audio_List({Key? key}) : super(key: key);

  @override
  State<Audio_List> createState() => _Audio_ListState();
}

class _Audio_ListState extends State<Audio_List> {
  List<dynamic> img = [
    "assets/images/bb.png",
    "assets/images/bp.jpeg",
    "assets/images/jj.webp",
    "assets/images/gangubai.jpeg",
    "assets/images/kgf.jpeg",
    "assets/images/mitra.jpeg",
    "assets/images/nacho.jpeg",
    "assets/images/pushpa.jpeg",
    "assets/images/rait.jpeg",
    "assets/images/vij.webp",
  ];
  List name = [
    "Bhool Boolaiya 2",
    "Bachchan Pandey",
    "JayeshBhai Jordar",
    "Gangubai Kathiyavadi",
    "K.G.F Chapter 2",
    "RUNWAY 34",
    "RRR",
    "Pushpa",
    "Atrangi Re",
    "Beast",
  ];
  List audio = [
    "assets/music/bb2.mp3",
    "assets/music/bachhan.mp3",
    "assets/music/Firecracker.mp3",
    "assets/music/Dholida.mp3",
    "assets/music/Toofan.mp3",
    "assets/music/Mitra_re.mp3",
    "assets/music/Naacho.mp3",
    "assets/music/Srivalli.mp3",
    "assets/music/Jollyo.mp3"
  ];

  List co = [
    Colors.indigo,
    Colors.blueAccent,
    Colors.blue,
    Colors.green.shade700,
    Colors.green,
    Colors.lightGreen,
    Colors.yellow,
    Colors.orange,
    Colors.redAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Songs"),
          centerTitle: true,
          backgroundColor: Colors.indigo.shade700,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
              itemCount: co.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Imagelist m1 =
                        Imagelist(name[index], img[index], audio[index]);
                    audiolink = audio[index];
                    Navigator.pushNamed(context, 'aodio', arguments: m1);
                  },
                  child: Card(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: co[index],
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            padding: EdgeInsets.all(6),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "${img[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${name[index]}",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Spacer(),
                          Icon(Icons.play_circle,
                              size: 40, color: Colors.white),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
