import 'package:flutter/material.dart';

class CText16 extends StatelessWidget {

  final text;

  CText16(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),);
  }
}
