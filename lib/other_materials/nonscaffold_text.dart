import 'package:flutter/material.dart';

class MyNonscaffoldText extends StatelessWidget {
  final fontSize;
  final textContent;

  const MyNonscaffoldText({this.fontSize, this.textContent, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DefaultTextStyle(
                style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w900),
                child: Text(textContent),
              ),
    );
  }
}