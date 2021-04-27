import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect12.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect14.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect18.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff2f2f4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(alignment: Alignment.centerRight, child: Icon(Icons.logout)),
          ),
          Expanded(
            child: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  dotsAndAvatar(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: CText18('Marvin Malformed'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      width: 150,
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'asset/piggy.png',
                                width: 30,
                                height: 30,
                                color: Color(0xfffFB6E3B),
                              ),
                            ),
                            Expanded(child: Text('2400 Points')),
                          ],
                        ),
                      ),
                    ),
                  ),
                  setting(deviceWidth),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget dotsAndAvatar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 0.0, bottom: 45),
          child: Icon(
            Icons.circle,
            size: 15,
            color: Color(0xfffFB6E3B),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0, top: 95),
          child: Icon(
            Icons.circle,
            size: 15,
            color: Color(0xfffFB6E3B).withOpacity(0.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, top: 15),
          child: Icon(
            Icons.circle,
            size: 8,
            color: Color(0xfffFB6E3B).withOpacity(0.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 0.0, bottom: 80),
          child: Icon(
            Icons.circle,
            size: 5,
            color: Color(0xfffFB6E3B).withOpacity(0.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0, top: 70),
          child: Icon(
            Icons.circle,
            size: 10,
            color: Color(0xfffFB6E3B),
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xfffFB6E3B),
          radius: 72,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 65,
            child: CircleAvatar(
              // backgroundColor: Colors.white,
              radius: 60,
              // replace with sample image
              // if(user.hasImage) use Image else use sample person image
              //sample image => guy.jpg
              backgroundImage: AssetImage('asset/guy.jpg'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 95),
          child: Icon(
            Icons.circle,
            size: 10,
            color: Color(0xfffFB6E3B).withOpacity(0.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, bottom: 90),
          child: Icon(
            Icons.circle,
            size: 10,
            color: Color(0xfffFB6E3B),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 15),
          child: Icon(
            Icons.circle,
            size: 12,
            color: Color(0xfffFB6E3B),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 115),
          child: Icon(
            Icons.circle,
            size: 7,
            color: Color(0xfffFB6E3B).withOpacity(0.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 55),
          child: Icon(
            Icons.circle,
            size: 7,
            color: Color(0xfffFB6E3B),
          ),
        ),
      ],
    );
  }

  setting(deviceWidth) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 12,
                    child: Card(
                      color: Color(0xfff2f2f4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Align(alignment: Alignment.topLeft, child: Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: CText12('General', 'grey'),
                )),
                ListTile(
                  leading: Container(
                    width: 45,
                    height: 45,
                    child: Card(
                      color: Color(0xfff2f2f4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.pedal_bike_rounded,
                        size: 25,
                        color: Color(0xff161616),
                      ),
                    ),
                  ),
                  title: CText14('Your Orders'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                Divider(
                  color: Color(0xfff2f2f4),
                ),
                ListTile(
                  leading: Container(
                    width: 45,
                    height: 45,
                    child: Card(
                      color: Color(0xfff2f2f4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.person,
                        size: 25,
                        color: Color(0xff161616),
                      ),
                    ),
                  ),
                  title: CText14('Profile Settings'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                Divider(
                  color: Color(0xfff2f2f4),
                ),
                ListTile(
                  leading: Container(
                    width: 45,
                    height: 45,
                    child: Card(
                      color: Color(0xfff2f2f4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.credit_card,
                        size: 25,
                        color: Color(0xff161616),
                      ),
                    ),
                  ),
                  title: CText14('Payment'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                Divider(
                  color: Color(0xfff2f2f4),
                ),
                ListTile(
                  leading: Container(
                    width: 45,
                    height: 45,
                    child: Card(
                      color: Color(0xfff2f2f4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.notifications_active_sharp,
                        size: 25,
                        color: Color(0xff161616),
                      ),
                    ),
                  ),
                  title: CText14('Notification'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                Divider(
                  color: Color(0xfff2f2f4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
