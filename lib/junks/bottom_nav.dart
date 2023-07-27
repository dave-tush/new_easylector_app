// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:new_easylector_app/intro%20page/Introduction_slide_page.dart';
// import 'package:new_easylector_app/main%20page/Home_page.dart';
//
//
//
//
//
// class MyCustomBottomNavigationBar extends StatefulWidget {
//   const MyCustomBottomNavigationBar({super.key});
//
//   @override
//   _MyCustomBottomNavigationBarState createState() =>
//       _MyCustomBottomNavigationBarState();
// }
//
// class _MyCustomBottomNavigationBarState
//     extends State<MyCustomBottomNavigationBar> with TickerProviderStateMixin {
//   int currentValue = 0;
//
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   late AnimationController _controller2;
//   late Animation<double> _animation2;
//
//   late AnimationController _controller3;
//   late Animation<double> _animation3;
//
//   late AnimationController _controller4;
//   late Animation<double> _animation4;
//
//   late AnimationController _controller5;
//   late Animation<double> _animation5;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//      super.initState();
//
//      _controller =
//     AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
//     _animation = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.easeIn))
//       ..addListener(() {
//         setState(() {});
//       });
//
//     _controller2 =
//         AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
//     _animation2 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller2,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.easeIn))
//       ..addListener(() {
//         setState(() {});
//       });
//
//     _controller3 =
//         AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
//     _animation3 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller3,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.easeIn))
//       ..addListener(() {
//         setState(() {});
//       });
//
//     _controller4 =
//         AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
//     _animation4 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller4,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.easeIn))
//       ..addListener(() {
//         setState(() {});
//       });
//
//     _controller5 =
//         AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
//     _animation5 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller5,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.ease))
//       ..addListener(() {
//         setState(() {});
//       });
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     _controller2.dispose();
//     _controller3.dispose();
//     _controller4.dispose();
//     _controller5.dispose();
//     super.dispose();
//   }
//
//
//   final List<Widget> pages = [
//     // Replace these with your actual home page, favorite page, etc.
//     MainPage(),
//     First_Intro_page(),
//     Placeholder(),
//     Placeholder(),
//     Placeholder(),
//     Placeholder(),
//     Placeholder(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       body: Stack(
//         children: [
// // HOME PAGE
//           SizedBox(
//             height: size.height,
//             width: size.width,
//             child: null,
//           ),
//
//           Positioned(
//             bottom: 0,
//             right: 0,
//             left: 0,
//             child: Container(
//               height: size.width * .14,
//               width: size.width,
//               margin: EdgeInsets.all(size.width * .04),
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(30),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   IconButton(
//                     icon: Icon(
//                       Icons.home,
//                       color: currentValue == 0 ? Colors.orange : Colors.black38,
//                       size: _animation.value,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         currentValue = 0;
//                         _controller.forward();
//                         _controller2.reverse();
//                         _controller3.reverse();
//                         _controller4.reverse();
//                         _controller5.reverse();
//                         HapticFeedback.lightImpact();
//                       });
//
//                     },
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                   ),
//                   IconButton(
//                     icon: Icon(
//                       Icons.person_rounded,
//                       color: currentValue == 1 ? Colors.orange : Colors.black38,
//                       size: _animation2.value,
//                     ),
//                     onPressed: () {
//
//                       setState(() {
//                         currentValue = 1;
//                         _controller2.forward();
//                         _controller.reverse();
//                         _controller3.reverse();
//                         _controller4.reverse();
//                         _controller5.reverse();
//                         HapticFeedback.lightImpact();
//                       });
//                     },
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                   ),
//                   IconButton(
//                     icon: Icon(
//                       Icons.add_box_rounded,
//                       color: currentValue == 2 ? Colors.orange : Colors.black38,
//                       size: _animation3.value,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         currentValue = 2;
//                         _controller3.forward();
//                         _controller.reverse();
//                         _controller2.reverse();
//                         _controller4.reverse();
//                         _controller5.reverse();
//                         HapticFeedback.lightImpact();
//                       });
//                     },
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                   ),
//                   IconButton(
//                     icon: Icon(
//                       Icons.favorite_rounded,
//                       color: currentValue == 3 ? Colors.orange : Colors.black38,
//                       size: _animation4.value,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         currentValue = 3;
//                         _controller4.forward();
//                         _controller.reverse();
//                         _controller2.reverse();
//                         _controller3.reverse();
//                         _controller5.reverse();
//                         HapticFeedback.lightImpact();
//                       });
//                     },
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                   ),
//                   IconButton(
//                     icon: Icon(
//                       Icons.settings_rounded,
//                       color: currentValue == 4 ? Colors.orange : Colors.black38,
//                       size: _animation5.value,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         currentValue = 4;
//                         _controller5.forward();
//                         _controller.reverse();
//                         _controller2.reverse();
//                         _controller3.reverse();
//                         _controller4.reverse();
//                         HapticFeedback.lightImpact();
//                       });
//                     },
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
//
// class HomePage extends StatefulWidget {
//   @override
//   HomePageState createState() => HomePageState();
// }
//
// class HomePageState extends State<HomePage> {
//   var currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     double displayWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       bottomNavigationBar: Container(
//         margin: EdgeInsets.all(displayWidth * .05),
//         height: displayWidth * .155,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.1),
//               blurRadius: 30,
//               offset: Offset(0, 10),
//             ),
//           ],
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: ListView.builder(
//           itemCount: 4,
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
//           itemBuilder: (context, index) => InkWell(
//             onTap: () {
//               setState(() {
//                 currentIndex = index;
//                 HapticFeedback.lightImpact();
//               });
//             },
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             child: Stack(
//               children: [
//                 AnimatedContainer(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   width: index == currentIndex
//                       ? displayWidth * .32
//                       : displayWidth * .18,
//                   alignment: Alignment.center,
//                   child: AnimatedContainer(
//                     duration: Duration(seconds: 1),
//                     curve: Curves.fastLinearToSlowEaseIn,
//                     height: index == currentIndex ? displayWidth * .12 : 0,
//                     width: index == currentIndex ? displayWidth * .32 : 0,
//                     decoration: BoxDecoration(
//                       color: index == currentIndex
//                           ? Colors.blueAccent.withOpacity(.2)
//                           : Colors.transparent,
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                 ),
//                 AnimatedContainer(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   width: index == currentIndex ? displayWidth * .31 : displayWidth * .18,
//                   alignment: Alignment.center,
//                   child: Stack(
//                     children: [
//                       Row(
//                         children: [
//                           AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             width:
//                                 index == currentIndex ? displayWidth * .13 : 0,
//                           ),
//                           AnimatedOpacity(
//                             opacity: index == currentIndex ? 1 : 0,
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             child: Text(
//                               index == currentIndex
//                                   ? '${listOfStrings[index]}'
//                                   : '',
//                               style: TextStyle(
//                                 color: Colors.blueAccent,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 15,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             width:
//                                 index == currentIndex ? displayWidth * .03 : 20,
//                           ),
//                           Icon(
//                             listOfIcons[index],
//                             size: displayWidth * .076,
//                             color: index == currentIndex
//                                 ? Colors.blueAccent
//                                 : Colors.black26,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<IconData> listOfIcons = [
//     Icons.home_rounded,
//     Icons.favorite_rounded,
//     Icons.settings_rounded,
//     Icons.person_rounded,
//   ];
//
//   List<String> listOfStrings = [
//     'Home',
//     'Favorite',
//     'Settings',
//     'Account',
//   ];
// }
//
// import 'package:flutter/material.dart';
//
//
// class HomePage extends StatefulWidget {
//   @override
//   HomePageState createState() => HomePageState();
// }
//
// class HomePageState extends State<HomePage> {
//   var currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       bottomNavigationBar: Container(
//         margin: EdgeInsets.all(20),
//         height: size.width * .155,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.15),
//               blurRadius: 30,
//               offset: Offset(0, 10),
//             ),
//           ],
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: ListView.builder(
//           itemCount: 4,
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.symmetric(horizontal: size.width * .024),
//           itemBuilder: (context, index) => InkWell(
//             onTap: () {
//               setState(
//                 () {
//                   currentIndex = index;
//                 },
//               );
//             },
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 1500),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   margin: EdgeInsets.only(
//                     bottom: index == currentIndex ? 0 : size.width * .029,
//                     right: size.width * .0422,
//                     left: size.width * .0422,
//                   ),
//                   width: size.width * .128,
//                   height: index == currentIndex ? size.width * .014 : 0,
//                   decoration: BoxDecoration(
//                     color: Colors.blueAccent,
//                     borderRadius: BorderRadius.vertical(
//                       bottom: Radius.circular(10),
//                     ),
//                   ),
//                 ),
//                 Icon(
//                   listOfIcons[index],
//                   size: size.width * .076,
//                   color: index == currentIndex
//                       ? Colors.blueAccent
//                       : Colors.black38,
//                 ),
//                 SizedBox(height: size.width * .03),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<IconData> listOfIcons = [
//     Icons.home_rounded,
//     Icons.favorite_rounded,
//     Icons.settings_rounded,
//     Icons.person_rounded,
//   ];
// }

import 'package:flutter/material.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
      const Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
      const Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
    ];

    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Tab1'),
      const BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Tab2'),
      const BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Tab3'),
    ];

    assert(_kTabPages.length == _kBottmonNavBarItems.length);

    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
