import 'package:flutter/material.dart';

class Audio_List extends StatefulWidget {
  const Audio_List({Key? key}) : super(key: key);

  @override
  State<Audio_List> createState() => _Audio_ListState();
}

class _Audio_ListState extends State<Audio_List> {
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
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(itemCount:co.length,itemBuilder: (context, index) {
            return Card(
              child: Container(
                height: 100,
                width: double.infinity,
                color: co[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}
