import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:new_client_delivery/custom_widgets/button-orange.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:video_player/video_player.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  VideoPlayerController _controller;

  get disposing {
    return dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset("asset/video/video.mp4")
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.play();
        _controller.setLooping(true);
//        _controller.pause();
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }


  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12,
                  Color(0xff03041d),
                ],
              )),
              child: LoginWidget())
        ],
      ),
    ));
  }
}

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to entrégame Food \nDelivery Service',
                style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.bold, fontSize: device.width * 0.055),
              ),
              Text(
                'Enjoy deliveries from a variety restaurants',
                style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ]
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: e,
                  ),
                )
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SignInButton(
                    Buttons.Google,
                    padding: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    text: "Sign up by Google",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //'push' here is used to suffice the route is pushed onPressed
                  ButtonOrange('Continue with phone', '/inputPhone', 'push'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PhoneInput extends StatefulWidget {
  @override
  _PhoneInputState createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  final TextEditingController _controllerText = new TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String signature = "{{ app signature }}";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAppSignature();
  }

  Future<void> getAppSignature() async {
    signature = await SmsAutoFill().getAppSignature;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushReplacementNamed('/'),
                    child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                ),
                child: CircleAvatar(
                      backgroundColor: Colors.white10,
                      radius: 18,
                      child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black87,
                            size: 15,
                          ))),
              ),
                  )),
              Text(
                'Enter your \nmobile number',
                style: TextStyle(fontFamily: 'Poppins', color: Colors.black87, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text('We will send you a confirmation code', style: TextStyle(fontFamily: 'Poppins', color: Colors.black87, fontSize: 15)),
              Column(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '+251',
                        style: TextStyle(fontSize: 26),
                      ),
                      Form(
                        key: _formKey,
                        child: Expanded(
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty || value.length != 9) {
                                  return 'Please Enter a valid Phone Number';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(9),
                              ],
                              controller: _controllerText,
                              style: TextStyle(fontSize: 26),
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: "Mobile Number",
                              ),
                              autofocus: true),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]
                .map(
                  (e) => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10), child: e),
                )
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: ButtonOrange('Next', '/confirmationPage', '$signature'),
          )
        ],
      ),
    );
  }
}

class ConfirmationPage extends StatefulWidget {
  @override
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  String _code;

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    listenCode();
  }

  listenCode() async {
    await SmsAutoFill().listenForCode;
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: CircleAvatar(
                      backgroundColor: Colors.white10,
                      radius: 18,
                      child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black87,
                            size: 15,
                          ))),
                ),
                Text(
                  'Enter code sent\n to your number',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.black87, fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text('We sent it to the number +251913552393', style: TextStyle(fontFamily: 'Poppins', color: Colors.black87, fontSize: 15)),
                SizedBox(height: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    PinFieldAutoFill(
                      codeLength: 4,
                      decoration: UnderlineDecoration(
                        textStyle: TextStyle(fontSize: 20, color: Color(0xfff161616)),
                        colorBuilder: FixedColorBuilder(Color(0xff03041d).withOpacity(0.3)),
                        bgColorBuilder: FixedColorBuilder(Color(0xff03041d).withOpacity(0.3)),
                      ),
                      currentCode: _code,
                      onCodeSubmitted: (code) {},
                      onCodeChanged: (code) {
                        if (code.length == 6) {
                          FocusScope.of(context).requestFocus(FocusNode());
                        }
                      },
                    ),
                  ],
                )
              ]
                  .map(
                    (e) => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10), child: e),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: ButtonOrange('Next', '/homePage', 'push'),
          )
        ],
      ),
    );
  }



}
