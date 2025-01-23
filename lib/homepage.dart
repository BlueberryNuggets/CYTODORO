import 'dart:math';
import 'package:cytodoro_1/buttons.dart';
import 'package:cytodoro_1/dna_parts/backbone.dart';
import 'package:cytodoro_1/dna_parts/bases.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int generatorNum = 0; 

  void generatorMethod() {
    generatorNum = Random().nextInt(4);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: const Color.fromARGB(255, 154, 218, 0),
            child: Center(
              child: Stack(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                          color: const Color.fromARGB(255, 228, 255, 164),
                          width: 200,
                          height: 350),
                    ),
                  ),
                  MyBackbone(xPos: 0.0, yPos: -0.4),
                  MyBackbone(xPos: 0.0, yPos: 0.4),
                  MyBase(generator: generatorNum, xPos: 0.0, yPos: 0.32,),
                  MyBase(generator: generatorNum, xPos: 0.4, yPos: 0.32,),
                  MyBase(generator: generatorNum, xPos: 0.8, yPos: 0.32,),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 245, 131, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(letter: "A"),
                MyButton(letter: "T"),
                MyButton(letter: "C"),
                MyButton(letter: "G"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
