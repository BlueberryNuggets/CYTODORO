import "package:flutter/material.dart";

class MyBackbone extends StatelessWidget {
  final xPos; 
  final yPos;

  const MyBackbone({this.xPos, this.yPos});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(xPos, yPos),
      child: Container(
          height: 30,
          color: const Color.fromARGB(255, 226, 170, 6)),
    );
  }
}
