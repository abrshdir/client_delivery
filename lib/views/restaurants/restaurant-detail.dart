import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect12.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect14.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect16.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect20.dart';
import 'package:new_client_delivery/views/foodDetails/detail.dart';

class RestaurantDetail extends StatelessWidget {
  Widget incomingData(deviceHeight, deviceWidth, context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0, bottom: 10),
              child: CText20('Burgers Story'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(
                  shadowColor: Colors.black,
                  backgroundColor: Colors.white,
                  label: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CText12('Free', 'center'),
                  ),
                  avatar: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.motorcycle_rounded,
                      color: Color(0xfffFB6E3B),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Chip(
                  shadowColor: Colors.black,
                  backgroundColor: Colors.white,
                  label: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CText12('25-30 min', 'center'),
                  ),
                  avatar: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.access_time_sharp,
                        color: Color(0xfffFB6E3B),
                      )),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Chip(
                  shadowColor: Colors.black,
                  backgroundColor: Colors.white,
                  label: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CText12('Rating', 'center'),
                  ),
                  avatar: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.star,
                        color: Color(0xfffFB6E3B),
                      )),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            Divider(),
          ],
        ),
        categorySelector(),
        listFoods(deviceHeight, deviceWidth, context),
      ],
    );
  }

  categorySelector() {
    final _color = Color(0xfff2f2f4);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              elevation: 2,
              label: Text('Popular'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              label: Text('Burgers'),
              backgroundColor: _color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              label: Text('Steaks'),
              backgroundColor: _color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              label: Text('Salad'),
              backgroundColor: _color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              label: Text('Popular'),
              backgroundColor: _color,
            ),
          ),
        ],
      ),
    );
  }

  listFoods(deviceHeight, deviceWidth, context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => FoodDetail()),
                );
              },
              child: Container(
                width: deviceWidth / 2.1,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  shadowColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'asset/burger.png',
                          width: 40,
                        ),
                        Center(child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: CText16('Classic Burgers'))),
                        CText12('350g', 'grey'),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '\$7.99',
                              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.resolveWith((states) => 0.0),
                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) return Colors.green;
                                  return Color(0xfff2f2f4); // Use the component's default.
                                },
                              ),
                              shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0),),
                            ),)),
                      ].map((e) => Padding(padding: EdgeInsets.symmetric(vertical: 2), child: e)).toList(),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: deviceWidth / 2.1,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'asset/burger.png',
                        width: 40,
                      ),
                      Center(child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: CText16('Classic Burgers'))),
                      CText12('350g', 'grey'),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '\$7.99',
                            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),),
                          ),
                            elevation: MaterialStateProperty.resolveWith((states) => 0.0),
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) return Colors.green;
                                return Color(0xfff2f2f4); // Use the component's default.
                              },
                            ),
                          )),
                    ].map((e) => Padding(padding: EdgeInsets.symmetric(vertical: 2), child: e)).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: deviceWidth / 2.1,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'asset/burger.png',
                        width: 40,
                      ),
                      Center(child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: CText16('Classic Burgers'))),
                      CText12('350g', 'grey'),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '\$7.99',
                            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.resolveWith((states) => 0.0),
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) return Colors.green;
                                return Color(0xfff2f2f4); // Use the component's default.
                              },
                            ),
                            shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),),
                          ),)),
                    ].map((e) => Padding(padding: EdgeInsets.symmetric(vertical: 2), child: e)).toList(),
                  ),
                ),
              ),
            ),
            Container(
              width: deviceWidth / 2.1,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'asset/burger.png',
                        width: 40,
                      ),
                      Center(child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: CText16('Classic Burgers'))),
                      CText12('350g', 'grey'),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '\$7.99',
                            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),),
                          ),
                            elevation: MaterialStateProperty.resolveWith((states) => 0.0),
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) return Colors.green;
                                return Color(0xfff2f2f4); // Use the component's default.
                              },
                            ),
                          )),
                    ].map((e) => Padding(padding: EdgeInsets.symmetric(vertical: 2), child: e)).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: deviceWidth / 2.1,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'asset/burger.png',
                        width: 40,
                      ),
                      Center(child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: CText16('Classic Burgers'))),
                      CText12('350g', 'grey'),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '\$7.99',
                            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.resolveWith((states) => 0.0),
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) return Colors.green;
                                return Color(0xfff2f2f4); // Use the component's default.
                              },
                            ),
                            shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),),
                          ),)),
                    ].map((e) => Padding(padding: EdgeInsets.symmetric(vertical: 2), child: e)).toList(),
                  ),
                ),
              ),
            ),
            Container(
              width: deviceWidth / 2.1,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'asset/burger.png',
                        width: 40,
                      ),
                      Center(child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: CText16('Classic Burgers'))),
                      CText12('350g', 'grey'),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '\$7.99',
                            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),),
                          ),
                            elevation: MaterialStateProperty.resolveWith((states) => 0.0),
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) return Colors.green;
                                return Color(0xfff2f2f4); // Use the component's default.
                              },
                            ),
                          )),
                    ].map((e) => Padding(padding: EdgeInsets.symmetric(vertical: 2), child: e)).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    // var width = deviceWidth / 10;
    return Scaffold(
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: Stack(
          children: [
            Image.asset('asset/images/burgers.jpg'),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 12.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: CircleAvatar(
                                backgroundColor: Colors.white10,
                                radius: 18,
                                child: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.black87,
                                  size: 15,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 12.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: CircleAvatar(
                                backgroundColor: Colors.white10,
                                radius: 18,
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.black87,
                                  size: 22,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: deviceHeight / 1.2,
                    // color: Colors.red,
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          height: deviceHeight / 1.2 - 40,
                          width: deviceWidth,
                          child: Container(
                              decoration: new BoxDecoration(
                                // color: Colors.green,
                                color: Color(0xfff2f2f4),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(20.0),
                                  topRight: const Radius.circular(20.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: ListView(
                                  physics: BouncingScrollPhysics(),
                                  children: [
                                    incomingData(deviceHeight, deviceWidth, context),
                                  ],
                                ),
                              )),
                        ),
                        Positioned(
                          top: 0,
                          left: (deviceWidth / 2) - 40,
                          child: CircleAvatar(
                            backgroundColor: Colors.white10,
                            radius: 40,
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 38,
                                child: Image.asset(
                                  'asset/burger.png',
                                  width: (deviceWidth / 4.5) - 40,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
