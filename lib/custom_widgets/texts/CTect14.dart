import 'package:flutter/material.dart';

class CText14 extends StatelessWidget {

  final text;

  CText14(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),);
  }
}
