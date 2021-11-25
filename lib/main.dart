import 'package:flutter/material.dart';
import 'package:new_client_delivery/views/profile/profile.dart';
import 'package:new_client_delivery/views/Home.dart';
import 'package:new_client_delivery/views/Login.dart';
import 'package:new_client_delivery/views/cart/cart.dart';
import 'package:new_client_delivery/views/foodDetails/detail.dart';
import 'package:new_client_delivery/views/main-page.dart';
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
// import 'package:flutter/material.dart';
// import 'dart:math' as math;
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Deck(),
//     );
//   }
// }
//
// class Deck extends StatefulWidget {
//   @override
//   _DeckState createState() => _DeckState();
// }
//
// class _DeckState extends State<Deck> with TickerProviderStateMixin {
//   List<MyCard> _cards = <MyCard>[];
//
//   @override
//   void initState() {
//     super.initState();
//     _cards.insert(0, MyCard());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("NLP Deck"),
//       ),
//       body: Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//           Container(),
//           _cards[0],
//           Positioned(
//             top: 40.0,
//             child: GestureDetector(
//               onTap: PressedDeck,
//               child: Container(
//                 width: 100.0,
//                 height: 128.0,
//                 decoration: BoxDecoration(color: Colors.brown),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void PressedDeck() {
//     print("PressedDeck");
//     setState(() {
//       _cards.insert(0, new MyCard());
//     });
//     print("cards length ${_cards.length}");
//   }
// }
//
// class MyCard extends StatefulWidget {
//   @override
//   _MyCardState createState() => _MyCardState();
// }
//
// class _MyCardState extends State<MyCard> with TickerProviderStateMixin {
//   AnimationController animController;
//   Animation flipAnimation;
//   Animation positionAnimation;
//
//   @override
//   void initState() {
//     print("My card init State");
//     super.initState();
//     animController =
//     new AnimationController(vsync: this, duration: Duration(seconds: 3));
//     flipAnimation = Tween<double>(begin: 1.0, end: 0).animate(animController);
//     positionAnimation =
//         Tween<double>(begin: 40.0, end: 240.0).animate(animController);
//
//     animController.forward();
//   }
//
//   @override
//   void didUpdateWidget(MyCard oldWidget) {
//     animController.reset();
//     animController.forward();
//     super.didUpdateWidget(oldWidget);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return PositionTransition(
//       position: positionAnimation,
//       flip: flipAnimation,
//     );
//   }
//
//   @override
//   void dispose() {
//     animController.dispose();
//     super.dispose();
//   }
// }
//
// class PositionTransition extends AnimatedWidget {
//   PositionTransition({
//     @required Animation<double> position,
//     @required this.flip,
//   }) : super(listenable: position);
//
//   final Animation<double> flip;
//
//   @override
//   Widget build(BuildContext context) {
//     final position = super.listenable as Animation<double>;
//     return Positioned(
//       top: position.value,
//       child: Transform(
//         alignment: FractionalOffset.center,
//         transform: Matrix4.rotationX(math.pi * flip.value),
//         child: flip.value >= 0.5
//             ? Container(
//           width: 100,
//           height: 128,
//           decoration: BoxDecoration(color: Colors.deepOrange),
//         )
//             : Container(
//           width: 100,
//           height: 128,
//           decoration: BoxDecoration(color: Colors.amber),
//         ),
//       ),
//     );
//   }
// }