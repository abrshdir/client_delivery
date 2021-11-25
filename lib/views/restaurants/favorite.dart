import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect14.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect16.dart';
import 'package:new_client_delivery/views/foodDetails/detail.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.navigation,
                color: Color(0xff03041d),
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: deviceHeight * 0.1,
                      maxWidth: deviceWidth / 1.8
                  ),
                  child: Card(
                    color: Colors.white38,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal, //.horizontal
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Bole Arabsa Condominium',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.shopping_bag,
                color: Color(0xff03041d),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
            right: 18.0,
            top: 12,
            bottom: 8,
          ),
          child: Text(
            'Favorite Restaurants',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: FittedBox(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
                color: Color(0xfff2f2f4),
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 8),
                        child: Text('Restaurant', style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 8),
                        child: Text('Food', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
