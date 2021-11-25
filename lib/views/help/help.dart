import 'dart:math';

import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

// class Help extends StatefulWidget {
//   @override
//   _HelpState createState() => _HelpState();
// }

// class _HelpState extends State<Help> with SingleTickerProviderStateMixin {
//   final CarouselController buttonCarouselController = CarouselController();
//   final Duration duration = Duration(milliseconds: 500);
//   AnimationController _controller;
//   int _current = 0;
//
//
//   final List<String> images = [
//     'asset/burger.png',
//     'asset/guy.jpg',
//     'asset/piggy.png',
//   ];
//
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       images.forEach((imageUrl) {
//         precacheImage(AssetImage(imageUrl), context);
//       });
//     });
//     _controller = AnimationController(
//       vsync: this, // the SingleTickerProviderStateMixin
//       duration: duration,
//     );
//     _controller.forward();
//   }
//
//   @override
//   void didUpdateWidget(Help oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     // _controller.forward();
//     _controller.duration = duration;
//   }
//
//   updateState() {
//     setState(() {
//       print('bew');
//       _controller.forward();
//     });
//   }
//
//   @override
//   void dispose() {
//     // _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Container(color: Colors.red,),
//           // Image.asset('assets/images/master.png', fit: BoxFit.cover),
//           CarouselSlider.builder(
//             itemCount: images.length,
//             carouselController: buttonCarouselController,
//             options: CarouselOptions(
//                 autoPlay: false,
//                 height: MediaQuery.of(context).size.height,
//                 viewportFraction: 1.0,
//                 enlargeCenterPage: false,
//                 enableInfiniteScroll: false,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }),
//             itemBuilder: (context, index, realIdx) {
//               return Container(
//                 child: Center(
//                     child: AnimatedBuilder(
//                       animation: _controller,
//                       builder: (conext, child) {
//                         return Transform.rotate(
//                           angle: _controller.value * 2 * pi,
//                           child: child,
//                         );
//                       },
//                       // child: Image.asset('asset/burger.png')),
//                       child: Image.asset(
//                         images[index],
//                         fit: BoxFit.cover,
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                     )),
//               );
//             },
//           ),
//           widgetButton(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: images.map((url) {
//               int index = images.indexOf(url);
//               return Container(
//                 width: 12.0,
//                 height: 12.0,
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _current == index
//                       ? Color.fromRGBO(255, 255, 255, 0.9)
//                       : Color.fromRGBO(255, 255, 255, 0.4),
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
//   Widget widgetButton() {
//     return _current == images.length - 1
//         ? Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//               padding: const EdgeInsets.symmetric(vertical: 30),
//               child: RaisedButton(
//                 onPressed: () {
//                   updateState();
//                   _controller.forward();
//                   // buttonCarouselController.nextPage(
//                   //     duration: Duration(milliseconds: 300),
//                   //     curve: Curves.linear);
//                 },
//                 child: Text('Skip'),
//               )
//           ),
//         ])
//         : Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//               padding: const EdgeInsets.symmetric(vertical: 30),
//               child: RaisedButton(
//                 onPressed: () {
//                   // updateState();
//                   setState(() {
//                     _controller.forward();
//                   });
//                   // buttonCarouselController.nextPage(
//                   //     duration: Duration(milliseconds: 300),
//                   //     curve: Curves.linear);
//                   },
//                 child: Text('Skip'),
//               )),
//         ]);
//   }
// }
class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}
class _HelpState extends State<Help> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final Duration duration = Duration(milliseconds: 100);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: duration,
    );
  }

  updateState() {
    setState(() {
      _controller.forward();
    });
  }

  @override
  void didUpdateWidget(Help oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.duration = duration;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          child: AnimatedBuilder(
              animation: _controller.view,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: child,
                );
              },
              child: Image.asset('asset/burger.png')),
        ),
        RaisedButton(
          child: Text('hello'),
          onPressed: () {
            updateState();
          },
        )
      ],
    ); // ...
  }
}
