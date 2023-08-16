import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:new_easylector_app/foundation/text_widget/Big_text.dart';
import '../../foundation/Column house/build_row.dart';
import '../../foundation/color_house/colors.dart';

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

class Ongoing_page extends StatefulWidget {
  const Ongoing_page({super.key});

  @override
  State<Ongoing_page> createState() => _Ongoing_pageState();
}

class _Ongoing_pageState extends State<Ongoing_page> {
  @override
  Widget build(BuildContext context) {
    List levels = [0.19, 0.2, 0.5, 0.4, 0.7, 0.2];
    List sub = [
      'MTH101',
      'BIO101',
      'CHM101',
      'PHY101',
      'LIB101',
      'GNS101',
    ];

    double Size = MediaQuery.of(context).size.width;
    return AnimationLimiter(
      child: ListView.builder(
        padding:
            EdgeInsets.symmetric(vertical: Size * .05, horizontal: Size * .03),
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: sub.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildPageItem(index);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    double Size = MediaQuery.of(context).size.width;

    List levels = [0.19, 0.2, 0.5, 0.4, 0.7, 0.2];
    List sub = [
      'MTH101',
      'BIO101',
      'CHM101',
      'PHY101',
      'LIB101',
      'GNS101',
    ];

    return AnimationConfiguration.staggeredList(
      position: index,
      delay: Duration(milliseconds: 100),
      child: SlideAnimation(
        duration: Duration(milliseconds: 2500),
        curve: Curves.fastLinearToSlowEaseIn,
        child: FadeInAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(milliseconds: 2500),
          child: Container(
            margin: EdgeInsets.only(bottom: Size * .05),
            height: Size * .33,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 40,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: Size * .045,
                  left: Size * .05,
                  child: Bigtext(
                    text: 'MTH101',
                    space: 0,
                    fontsize: Size * .055,
                  ),
                ),
                Positioned(
                  top: Size * .14,
                  left: Size * .05,
                  child: Icon(
                    Icons.play_circle,
                    color: MyColors.maincolor,
                  ),
                ),
                Positioned(
                  top: Size * .1451,
                  left: Size * .13,
                  child: Bigtext(
                    text: '8 Lessons',
                    space: 0,
                    fontsize: Size * .038,
                  ),
                ),
                Positioned(
                  top: Size * .09,
                  left: Size * .6,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: RowBuilder(
                        itemBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircleAvatar(),
                          );
                        },
                        itemCount: 5),
                  ),
                ),
                Positioned(
                  top: Size * .25,
                  left: Size * .05,
                  child: SizedBox(
                    height: Size * .04,
                    width: Size * .82,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.all(Radius.circular(Size * .1)),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.grey.shade200,
                        value: levels[index],
                        color: MyColors.maincolor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Completed_page extends StatefulWidget {
  const Completed_page({super.key});

  @override
  State<Completed_page> createState() => _Completed_pageState();
}

class _Completed_pageState extends State<Completed_page> {
  @override
  Widget build(BuildContext context) {
    double Size = MediaQuery.of(context).size.width;
    return AnimationLimiter(
      child: ListView.builder(
        padding:
            EdgeInsets.symmetric(vertical: Size * .05, horizontal: Size * .03),
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return _buildPageItem(index);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    double Size = MediaQuery.of(context).size.width;

    // List levels = [0.19, 0.2, 0.5, 0.4, 0.7, 0.22];
    List sub = [
      'MTH101',
      'PHY101',
      'BIO101',
    ];

    return AnimationConfiguration.staggeredList(
      position: index,
      delay: Duration(milliseconds: 100),
      child: SlideAnimation(
        duration: Duration(milliseconds: 2500),
        curve: Curves.fastLinearToSlowEaseIn,
        child: FadeInAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(milliseconds: 2500),
          child: Container(
            margin: EdgeInsets.only(bottom: Size * .05),
            height: Size * .33,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 40,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: Size * .045,
                  left: Size * .05,
                  child: Bigtext(
                    text: 'MTH101',
                    space: 0,
                    fontsize: Size * .055,
                  ),
                ),
                Positioned(
                  top: Size * .14,
                  left: Size * .05,
                  child: Icon(
                    Icons.play_circle,
                    color: MyColors.maincolor,
                  ),
                ),
                Positioned(
                  top: Size * .1451,
                  left: Size * .13,
                  child: Bigtext(
                    text: '8 Lessons',
                    space: 0,
                    fontsize: Size * .038,
                  ),
                ),
                Positioned(
                  top: Size * .09,
                  left: Size * .6,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: RowBuilder(
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 20,
                            width: 20,
                            child: CircleAvatar(),
                          );
                        },
                        itemCount: 5),
                  ),
                ),
                Positioned(
                  top: Size * .25,
                  left: Size * .05,
                  child: Container(
                    height: Size * .04,
                    width: Size * .82,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.all(Radius.circular(Size * .1)),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.grey,
                        value: sub.length.toDouble(),
                        color: MyColors.maincolor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
