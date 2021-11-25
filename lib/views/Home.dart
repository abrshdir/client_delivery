import 'package:flutter/material.dart';
import 'package:new_client_delivery/views/Login.dart';
import 'package:new_client_delivery/views/help/help.dart';
import 'package:new_client_delivery/views/main-page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
