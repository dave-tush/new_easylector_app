import 'package:flutter/material.dart';
import 'package:new_easylector_app/foundation/text_widget/Big_text.dart';
import '../../../foundation/color_house/colors.dart';
import 'completed_page.dart';
import 'ongoing_page.dart';



class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {


    double Size = MediaQuery.of(context).size.width;

    final _topNavPages = <Widget>[
      const Center(child: Ongoing_page(),),
      const Center(child: Completed_page(),),
    ];

    final _topNavBarPagesPerItems = <Tab>[
      const Tab(icon: Icon(Icons.incomplete_circle_rounded), text: 'Ongoing'),
      const Tab(icon: Icon(Icons.task_alt_sharp), text: 'Completed'),
    ];

    final _topNavBar = AppBar(
      toolbarHeight: Size * .2,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Icon(
            Icons.search,
            color: Colors.grey,
            size: Size * 0.06,
          ),
        ),
      ],
      backgroundColor: Colors.white,
      title: Bigtext(
        text: 'Courses',
        space: 1,
        fontsize: Size * 0.055,
        color: MyColors.maincolor,
      ),
      bottom: TabBar(
        tabs: _topNavBarPagesPerItems,
        indicatorColor: MyColors.maincolor,
        unselectedLabelColor: Colors.grey,
        labelColor: MyColors.maincolor,
      ),
    );

    return DefaultTabController(
      length: _topNavBarPagesPerItems.length,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: _topNavBar,
        body: TabBarView(
          children: _topNavPages,
        ),
      ),
    );
  }
}
