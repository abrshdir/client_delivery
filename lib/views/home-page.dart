import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect16.dart';
import 'package:new_client_delivery/profile/profile.dart';
import 'package:new_client_delivery/views/foodDetails/detail.dart';
import 'package:new_client_delivery/views/restaurants/restaurants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Restaurants(),
    Text(
      'Index 1: Business',
      ),
    Text(
      'Index 2: School',
      ),
    Account()
  ];


  Widget bottomAppBAr(widthSize, heightSize) {
    return FFNavigationBar(
      theme: FFNavigationBarTheme(
        barBackgroundColor: Colors.white,
        selectedItemBorderColor: Colors.transparent,
        selectedItemBackgroundColor: Color(0xfffFB6E3B),
        selectedItemIconColor: Colors.white,
        selectedItemLabelColor: Color(0xfff161616),
        showSelectedItemShadow: true,
        barHeight: heightSize * 0.1,
        selectedItemTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      ),
      selectedIndex: selectedIndex,
      onSelectTab: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        FFNavigationBarItem(
          iconData: Icons.restaurant,
          label: 'Restaurants',
        ),
        FFNavigationBarItem(
          iconData: Icons.favorite,
          label: 'Favorite',
        ),
        FFNavigationBarItem(
          iconData: Icons.shopping_cart,
          label: 'Cart',
        ),
        FFNavigationBarItem(
          iconData: Icons.person,
          label: 'Account',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
          child: _widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: bottomAppBAr(widthSize, heightSize));
  }
}
