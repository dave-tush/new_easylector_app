import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../foundation/color_house/colors.dart';
import '../../foundation/text_widget/Big_text.dart';

class Message_page extends StatefulWidget {
  const Message_page({super.key});

  @override
  State<Message_page> createState() => _Message_pageState();
}

class _Message_pageState extends State<Message_page> {
  @override
  Widget build(BuildContext context) {
    double Size = MediaQuery.of(context).size.width;

    final _topNavBar = AppBar(
      toolbarHeight: Size * .3,
      leadingWidth: Size * .7,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Bigtext(
              text: 'Messages',
              space: 1,
              fontsize: Size * 0.064,
              color: Colors.black,
            )),
      ),
      actions: [
        Icon(
          Icons.more_vert_outlined,
          color: Colors.black,
        )
      ],
    );

    List sub = [
      'MTH101',
      'BIO101',
      'CHM101',
      'PHY101',
      'LIB101',
      'GNS101',
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: _topNavBar,
      body: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(
              vertical: Size * .05, horizontal: Size * .03),
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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

    List sub = [
      'Ayo',
      'David',
      'Kunle',
      'Promise',
      'Wisdom',
      'Mic',
    ];
    List time = [
      '8:30 PM',
      '7:05 AM',
      'Yesterday',
      '6:30 PM',
      '3:08 AM',
      '12:30PM',
    ];
    List msg = [
      'TYPING MESSAGE....',
      'Hello I love this....',
      'Its a brilliant app....',
      'Great app',
      'TYPING MESSAGE....',
      'TYPING MESSAGE....',
    ];
    List msgNo = [7, 2, 5, 6, 1, 10];

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
            height: Size * .25,
            child: Stack(
              children: [
                Positioned(
                  top: Size * .05,
                  left: Size * .034,
                  child: Container(
                    height: Size * .16,
                    width: Size * .15,
                    child: CircleAvatar(),
                  ),
                ),
                Positioned(
                  top: Size * .065,
                  left: Size * .21,
                  child: Bigtext(
                    text: sub[index].toString(),
                    space: 0,
                    fontsize: Size * .03,
                  ),
                ),
                Positioned(
                  top: Size * .15,
                  left: Size * .21,
                  child: Bigtext(
                    text: msg[index].toString(),
                    space: 0,
                    fontsize: Size * .03,
                    color: MyColors.maincolor,
                  ),
                ),
                Positioned(
                  top: Size * .05,
                  right: Size * .04,
                  child: Bigtext(
                    text: time[index].toString(),
                    space: 0,
                    fontsize: Size * .03,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  top: Size * .122,
                  right: Size * .04,
                  child: Container(
                    height: Size * .062,
                    width: Size * .062,
                    decoration: BoxDecoration(
                        color: MyColors.maincolor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Bigtext(
                      text: msgNo[index].toString(),
                      space: 0,
                      fontsize: Size * .03,
                      color: Colors.white,
                    )),
                  ),
                ),
                Positioned(
                  top: Size * .24,
                  right: Size * .02,
                  child: Container(
                    height: Size * .005,
                    width: Size * .9,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
