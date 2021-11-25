import 'package:flutter/material.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect12.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect16.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect18.dart';
import 'package:new_client_delivery/custom_widgets/texts/CTect20.dart';
import 'package:new_client_delivery/views/cart/cart.dart';

class FoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
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
                    Center(
                      child: Card(
                        color: Colors.white38,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal, //.horizontal
                            child: Text(
                              'Burger Story',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.black87,
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              Image.asset(
                                'asset/images/burger-detail.png',
                                height: 210,
                                width: 200,
                              ),
                              Positioned(
                                  bottom: 0,
                                  left: deviceWidth / 8,
                                  child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                            child: Icon(
                                              Icons.remove,
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                            child: CText18('1'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                            child: Icon(
                                              Icons.add,
                                              size: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        CText20('Ham Burger - \$100.00'),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
                          child: CText12('American Burger with a fried potato with more than 300 Kcal in a single breath', 'center'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.local_fire_department,
                                  color: Color(0xfffFB6E3B),
                                ),
                              ),
                              CText12('320.12 cal', 'center')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: CText16('Add to Ham Burger'),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Card(
                                    shadowColor: Colors.white,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                    child: CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 18,
                                        child: Image.asset('asset/burger.png'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.check_circle,
                                          color: Colors.green,
                                          size: 24,
                                        )),
                                  ),
                                ],
                              ),
                              Card(
                                shadowColor: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.white38,
                                  child: CircleAvatar(
                                    radius: 18,
                                    child: Image.asset('asset/burger.png'),
                                  ),
                                ),
                              ),
                              Card(
                                shadowColor: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.white38,
                                  child: CircleAvatar(
                                    radius: 18,
                                    child: Image.asset('asset/burger.png'),
                                  ),
                                ),
                              ),
                              Card(
                                shadowColor: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.white38,
                                  child: CircleAvatar(
                                    radius: 18,
                                    child: Image.asset('asset/burger.png'),
                                  ),
                                ),
                              ),
                              Card(
                                shadowColor: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.white38,
                                  child: CircleAvatar(
                                    radius: 18,
                                    child: Image.asset('asset/burger.png'),
                                  ),
                                ),
                              ),
                              Card(
                                shadowColor: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.white38,
                                  child: CircleAvatar(
                                    radius: 18,
                                    child: Image.asset('asset/burger.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) return Colors.green;
                        return Color(0xfffFB6E3B); // Use the component's default.
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    )),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(
                      horizontal: deviceWidth / 5,
                      vertical: 15,
                    )),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Cart()));
                  },
                  child: Text('Add to Cart for \$100.00'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
