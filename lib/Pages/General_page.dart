import 'package:flutter/material.dart';
import 'package:new_easylector_app/Pages/nav%20bar%20pages/Account_page.dart';
import 'package:new_easylector_app/Pages/nav%20bar%20pages/Download_page.dart';
import 'package:new_easylector_app/Pages/nav%20bar%20pages/Message_page.dart';
import 'package:new_easylector_app/foundation/color_house/colors.dart';
import 'nav bar pages/Courses_page.dart';
import 'nav bar pages/Home_page.dart';

class General_page extends StatefulWidget {
  const General_page({super.key});

  @override
  State<General_page> createState() => _General_pageState();
}

class _General_pageState extends State<General_page> {
  int _currentNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _NavPages = <Widget>[
      const Center(child: HomePage()),
      const Center(child: Download_page()),
      const Center(child: CoursesPage()),
      const Center(child: Message_page()),
      const Center(child: Profile_page()),
    ];

    final _NavBarPagesPerItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
      const BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Download'),
      const BottomNavigationBarItem(icon: Icon(Icons.video_collection), label: 'Courses'),
      const BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
      const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
    ];



    final bottomNavBar = BottomNavigationBar(
      selectedItemColor: MyColors.maincolor,
      items: _NavBarPagesPerItems,
      currentIndex: _currentNavIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentNavIndex = index;
        });
      },
    );

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: _NavPages[_currentNavIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
