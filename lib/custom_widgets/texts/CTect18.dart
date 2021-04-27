import 'package:flutter/material.dart';

class CText18 extends StatelessWidget {

  final text;

  CText18(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),);
  }
}
