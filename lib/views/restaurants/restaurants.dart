import 'package:flutter/material.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect16.dart';
import 'package:new_client_delivery/views/foodDetails/detail.dart';

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
            right: 18.0,
            top: 12,
            bottom: 8,
          ),
          child: Text(
            'Main Categories',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Card(
                color: Color(0xfffFB6E3B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'asset/burger.png',
                            height: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Burgers',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Color(0xfffFB6E3B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'asset/burger.png',
                            height: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Burgers',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Color(0xfffFB6E3B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'asset/burger.png',
                            height: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Burgers',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Color(0xfffFB6E3B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'asset/burger.png',
                            height: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Burgers',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Color(0xfffFB6E3B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'asset/burger.png',
                            height: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Burgers',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ].map((e) => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10), child: e)).toList(),
          ),
        ),
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) => FoodDetail()),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 4,
                            color: Color(0xfffFB6E3B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Container(
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    child: Image.asset('asset/images/burgers.jpg'),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      left: 0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), bottomLeft: Radius.circular(29.5)),
                                        child: Container(
                                          padding: EdgeInsets.all(12),
                                          color: Colors.white,
                                          child: Text(
                                            '25-30 min',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Burgers Story',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xfffFB6E3B),
                              ),
                              CText16('4.7'),
                              // Type
                              CText16('Burgers'),
                              CText16('•'),
                              CText16('Extras'),
                              CText16('•'),
                              CText16('\$100.00')
                            ].map((e) => Padding(padding: const EdgeInsets.only(right: 10), child: e)).toList(),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 4,
                          color: Color(0xfffFB6E3B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  child: Image.asset('asset/images/burgers2.jpg'),
                                ),
                                Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), bottomLeft: Radius.circular(29.5)),
                                      child: Container(
                                        padding: EdgeInsets.all(12),
                                        color: Colors.white,
                                        child: Text(
                                          '25-30 min',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Burgers Story',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Color(0xfffFB6E3B),
                            ),
                            CText16('4.7'),
                            // Type
                            CText16('Burgers'),
                            CText16('•'),
                            CText16('Extras'),
                            CText16('•'),
                            CText16('\$100.00')
                          ].map((e) => Padding(padding: const EdgeInsets.only(right: 10), child: e)).toList(),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 4,
                          color: Color(0xfffFB6E3B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  child: Image.asset('asset/images/burgers3.jpg'),
                                ),
                                Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), bottomLeft: Radius.circular(29.5)),
                                      child: Container(
                                        padding: EdgeInsets.all(12),
                                        color: Colors.white,
                                        child: Text(
                                          '25-30 min',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Burgers Story',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Color(0xfffFB6E3B),
                            ),
                            CText16('4.7'),
                            // Type
                            CText16('Burgers'),
                            CText16('•'),
                            CText16('Extras'),
                            CText16('•'),
                            CText16('\$100.00')
                          ].map((e) => Padding(padding: const EdgeInsets.only(right: 10), child: e)).toList(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
