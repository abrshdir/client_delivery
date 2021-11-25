import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect12.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect14.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect18.dart';

class DeliveryStatus extends StatefulWidget {
  @override
  _DeliveryStatusState createState() => _DeliveryStatusState();
}

class _DeliveryStatusState extends State<DeliveryStatus> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('called');
    _modalBottomSheetMenu();
  }

  void _modalBottomSheetMenu() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (builder) {
            final deviceHeight = MediaQuery.of(context).size.height;
            final deviceWidth = MediaQuery.of(context).size.width;
            return new Container(
              height: deviceHeight / 1.3,
              color: Colors.transparent, //could change this to Color(0xFF737373),
              //so you don't have to change MaterialApp canvasColor
              child: Stack(
                children: [
                  Positioned(
                    height: (deviceHeight / 1.3) - 30,
                    bottom: 0,
                    width: deviceWidth,
                    child: Container(
                        height: deviceHeight / 1.35,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(15.0),
                            topRight: const Radius.circular(15.0),
                          ),
                        ),
                        child: incomingData(deviceHeight, deviceWidth)),
                  ),
                  Positioned(
                    left: (deviceWidth / 2) - 30,
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      shadowColor: Color(0xff03041d),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Icon(
                          Icons.directions_walk,
                          size: (deviceWidth / 5) - 30,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    // final deviceWidth = MediaQuery.of(context).size.width;
    // final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _modalBottomSheetMenu();
        },
        child: Icon(Icons.info_outline),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
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
                            radius: 14,
                            child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.black87,
                                  size: 15,
                                ))),
                      ),
                    ),
                    Icon(
                      Icons.list,
                      color: Colors.black87,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget incomingData(deviceHeight, deviceWidth) {
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: CText18('14:45 - 15:10'),
              ),
              Text(
                'Estimated delivery time',
                style: TextStyle(fontSize: 12, color: Colors.black38),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Accepted',
                      style: TextStyle(fontSize: 10, color: Colors.black38),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Cooking",
                        style: TextStyle(fontSize: 15, color: Color(0xfff161616)),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "Delivery",
                      style: TextStyle(fontSize: 10, color: Colors.black38),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "Complete",
                      style: TextStyle(fontSize: 10, color: Colors.black38),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42.0, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0xfffFB6E3B),
                        child: Icon(
                          Icons.check,
                          size: 10,
                        )),
                    Expanded(
                        child: Divider(
                      thickness: 2.5,
                      color: Color(0xfffFB6E3B),
                    )),
                    CircleAvatar(radius: 20, backgroundColor: Color(0xfffFB6E3B), child: CircularProgressIndicator(backgroundColor: Colors.transparent, strokeWidth: 2)),
                    Expanded(
                        child: Divider(
                      thickness: 2.5,
                      color: Colors.grey,
                    )),
                    CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.adjust_outlined,
                          color: Colors.white,
                          size: 10,
                        )),
                    Expanded(
                        child: Divider(
                      thickness: 2.5,
                      color: Colors.grey,
                    )),
                    CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.adjust_outlined,
                          color: Colors.white,
                          size: 10,
                        )),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 3 / 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  child: Card(
                    elevation: 6,
                    shadowColor: Color(0xff03041d),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Expanded(
                      child: ListView(
                        physics: BouncingScrollPhysics(),
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
                                title: CText14('Burgers Delicious'),
                                subtitle: Text(
                                  '01 september, 12:30 PM',
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CText12('1x chicken burger 320g', ''),
                                    CText12('\$9.49', ''),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CText12('1x chicken burger 320g', ''),
                                    CText12('\$9.49', ''),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CText12('1x chicken burger 320g', ''),
                                    CText12('\$9.49', ''),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                            if (states.contains(MaterialState.pressed)) return Colors.green;
                                            return Colors.white38; // Use the component's default.
                                          },
                                        ),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        )),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.support_agent,
                                              color: Colors.black38,
                                              size: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5.0),
                                              child: Text(
                                                'Support',
                                                style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 3 / 1.3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: deviceWidth - 32,
                    height: (deviceHeight / 4) - 30,
                    child: Card(
                      elevation: 6,
                      shadowColor: Color(0xff03041d),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Card(
                                color: Color(0xffDBDBDC),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    'asset/guy.jpg',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            title: CText14('Bruce Evans'),
                            subtitle: Text(
                              '01 september, 12:30 PM',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) return Colors.green;
                                        return Colors.white38; // Use the component's default.
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    )),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: Colors.black38,
                                          size: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                            'Call',
                                            style: TextStyle(color: Color(0xff03041d), fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(MaterialState.pressed)) return Colors.green;
                                          return Colors.white38; // Use the component's default.
                                        },
                                      ),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      )),
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.location_on_sharp,
                                            color: Colors.black38,
                                            size: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              'Location',
                                              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
