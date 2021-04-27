import 'package:flutter/material.dart';

class CText20 extends StatelessWidget {

  final text;

  CText20(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),);
  }
}
