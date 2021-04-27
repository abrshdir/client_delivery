import 'package:flutter/material.dart';

class CText24 extends StatelessWidget {

  final text;

  CText24(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),);
  }
}
