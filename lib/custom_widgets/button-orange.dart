import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_client_delivery/views/Login.dart';
import 'package:new_client_delivery/views/orderStatus/orderStatus.dart';

class ButtonOrange extends StatelessWidget {
  ButtonOrange(this.yourData, this.routeName, this.routeMethod);

  final String yourData;
  final String routeName;
  final String routeMethod;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15)),
      ),
      onPressed: () {
        if(routeName == '/inputPhone') {
          Navigator.of(context).pushReplacementNamed(routeName);
//          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => PhoneInput()));
        } else if(routeName == '/confirmationPage') {
//          post push to back end here for sms auto fill check where it comes from
        // signature to be send coming throught $widget.routeMethod
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ConfirmationPage()));
        } else {
          Navigator.of(context).pushReplacementNamed(routeName);
        }
      },
      child: Text('$yourData'),
    );
  }



}
