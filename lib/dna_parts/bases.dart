import 'package:cytodoro_1/other_materials/nonscaffold_text.dart';
import 'package:flutter/material.dart';

class MyBase extends StatefulWidget {
  final generator;
  final xPos;
  final yPos;

  MyBase({this.generator, this.xPos, this.yPos, super.key});

  @override
  State<MyBase> createState() => _MyBaseState();
}



class _MyBaseState extends State<MyBase> {
  final List<Color> _colors = [
    const Color.fromARGB(255, 242, 31, 221),
    const Color.fromARGB(255, 66, 165, 245),
    const Color.fromARGB(255, 186, 31, 242),
    const Color.fromARGB(255, 66, 87, 245)
  ];
  double moveX = 0;
  double moveY = 0;

   void _moveBase() {
      setState((){
        moveX = 1; 
        moveY = 1;
      });
    }

  @override
  Widget build(BuildContext context) {
    int baseColorIndex = 0;
    String baseName = " ";

    switch (widget.generator) {
      case 0:
        baseColorIndex = 0;
        baseName = "A";
        break;
      case 1:
        baseColorIndex = 1;
        baseName = "T";
        break;
      case 2:
        baseColorIndex = 2;
        baseName = "C";
        break;
      case 3:
        baseColorIndex = 2;
        baseName = "G";
        break;
    }

    return GestureDetector(
      onTap: _moveBase,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        alignment: Alignment(moveX, moveY),
        child: Container(
          alignment: Alignment(widget.xPos, widget.yPos),
          child: Container(
            color: _colors[baseColorIndex],
            width: 35,
            height: 110,
            child: Column(
              children: [
                MyNonscaffoldText(textContent: baseName),
                Expanded(
                  flex: 4,
                  child: Container(),
                ),
                MyNonscaffoldText(textContent: baseName)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
