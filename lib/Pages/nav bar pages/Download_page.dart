
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../foundation/Column house/build_row.dart';
import '../../foundation/color_house/colors.dart';
import '../../foundation/text_widget/Big_text.dart';




class Download_page extends StatefulWidget {
  const Download_page({super.key});

  @override
  State<Download_page> createState() => _Download_pageState();
}

class _Download_pageState extends State<Download_page> {
  @override
  Widget build(BuildContext context) {
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

    final _topNavBar = AppBar(
      toolbarHeight: Size * .3,
      leadingWidth: Size * .7,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(12),
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bigtext(text: 'Downloaded Courses', space: 0, fontsize: Size * 0.05, color: Colors.black,),
                Bigtext(text: 'Continue offline', space: 0, fontsize:Size * 0.04, color: Colors.black,),
                SizedBox(height: Size * 0.05,)
              ],
            )
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(13.0),
          child: Icon(Icons.search, color: Colors.black,
          ),
        )
      ],
    );


    return Scaffold(
      appBar: _topNavBar,
      body: AnimationLimiter(
        child: ListView.builder(
          padding:
          EdgeInsets.symmetric(vertical: Size * .05, horizontal: Size * .03),
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: sub.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildPageItem(index);
          },
        ),
      ),
    );
  }
  
  
  

  Widget _buildPageItem(int index) {
    double Size = MediaQuery.of(context).size.width;

    List levels = [0.7, 0.2, 0.1, 0.06, 0.4, 0.48];
    List sub = [
      'MTH101',
      'BIO101',
      'CHM101',
      'PHY101',
      'LIB101',
      'GNS101',
    ];

    List noLesson = [
      '10 Lessons',
      '4 Lessons',
      '2 Lessons',
      '1 Lesson',
      '7 Lessons',
      '8 Lessons',
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
                    text: sub[index].toString(),
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
                    text: noLesson[index].toString(),
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