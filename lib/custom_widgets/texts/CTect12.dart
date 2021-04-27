import 'package:flutter/material.dart';

class CText12 extends StatelessWidget {
  final text;
  final align;

  CText12(this.text, this.align);

  @override
  Widget build(BuildContext context) {
    if (align == 'center') {
      return Text(
        text,
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
      );
    } else if(align == 'grey'){
      return Text(
        text,
        style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );
    }
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12));
  }
}
