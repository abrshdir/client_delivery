import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_client_delivery/custom_widgets/button-orange.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect12.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect14.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect16.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect24.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool _visible = false;

  var delay1;
  var delay2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delay1 = Future.delayed(const Duration(seconds: 2), () {
      //asynchronous delay
      if (mounted) {
        setState(() {
          //tells the widget builder to rebuild again because ui has updated
          _visible = true; //update the variable declare this under your class so its accessible for both your widget build and initState which is located under widget build{}
        });
      }
    });

    delay2 = Future.delayed(const Duration(seconds: 5), () {
      //asynchronous delay
      if (mounted) {
        setState(() {
          //tells the widget builder to rebuild again because ui has updated
          _visible = false; //update the variable declare this under your class so its accessible for both your widget build and initState which is located under widget build{}
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 4),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    child: Text(
                      'Clear',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xfffFB6E3B),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 22.0),
                child: CText24('4 items in the cart for \$18.47'),
              ),
              Text(
                'Burgers Story',
                style: TextStyle(fontSize: 12, color: Color(0xfffbebec7), fontWeight: FontWeight.bold),
              ),
              Divider(),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: Card(
                              color: Color(0xffDBDBDC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'asset/burger.png',
                                  width: 40,
                                  height: 40,
                                ),
                              )),
                          title: CText16('Ham burger'),
                          subtitle: CText12('\$100.00', 'start'),
                          trailing: Container(
                            width: deviceWidth / 4,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Card(
                                    color: Color(0xffDBDBDC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                CText14('1'),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Card(
                                    color: Color(0xffDBDBDC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                            child: Container(
                              width: deviceWidth,
                              color: Colors.red,
                              child: Center(
                                  child: Text(
                                '<<<<<<slide food to remove<<<<<<<<',
                                style: TextStyle(fontSize: 8, color: Colors.white),
                              )),
                            ),
                            visible: _visible),
                        ListTile(
                          leading: Card(
                              color: Color(0xffDBDBDC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'asset/burger.png',
                                  width: 40,
                                  height: 40,
                                ),
                              )),
                          title: CText16('Ham burger'),
                          subtitle: CText12('\$100.00', 'start'),
                          trailing: Container(
                            width: deviceWidth / 4,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Card(
                                    color: Color(0xffDBDBDC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                CText14('1'),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Card(
                                    color: Color(0xffDBDBDC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CText14('Delivery'),
                  CText14('\$50'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: ButtonOrange('Order for \$150', '/deliveryStatus', 'push'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
