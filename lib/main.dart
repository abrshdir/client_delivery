import 'package:flutter/material.dart';
import 'package:new_client_delivery/profile/profile.dart';
import 'package:new_client_delivery/views/Home.dart';
import 'package:new_client_delivery/views/Login.dart';
import 'package:new_client_delivery/views/cart/cart.dart';
import 'package:new_client_delivery/views/foodDetails/detail.dart';
import 'package:new_client_delivery/views/home-page.dart';
import 'package:new_client_delivery/views/orderStatus/orderStatus.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: 'Food Delivery App',
      // Set Raleway as the default app font.
      theme: ThemeData(fontFamily: 'Poppins', bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xff03041d).withOpacity(0),
      )),
      routes: {
        '/': (context) => Home(),
        '/inputPhone': (context) => PhoneInput(),
        '/confirmationPage': (context) => ConfirmationPage(),
        '/homePage': (context) => HomePage(),
        '/foodDetails': (context) => FoodDetail(),
        '/cart': (context) => Cart(),
        '/deliveryStatus': (context) => DeliveryStatus(),
        '/account': (context) => Account(),
      },
    );
  }
}
