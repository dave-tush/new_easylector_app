import 'package:flutter/material.dart';

import '../../foundation/color_house/colors.dart';
import '../../foundation/text_widget/Big_text.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {

    double Size = MediaQuery.of(context).size.width;


    return Container(
      height: MediaQuery.of(context).size.height,
      width: Size,
      child: Stack(
        children: [
          Positioned(
            top: Size * .2,
              left: Size * .033,
              child: Icon(Icons.arrow_back, color: MyColors.maincolor,),
          ),

          Positioned(
            top: Size * .2,
            left: Size * .36,
            child: Bigtext(text: 'My Profile', space: 0, fontsize: Size * .05,),
          ),


          Positioned(
            top: Size * .2,
            right: Size * .03,
            child: Icon(Icons.settings, color: MyColors.maincolor,),
          ),


          Positioned(
            top: Size * .4,
              left: Size * .033,
              child: Container(
                height: Size * .35,
                width: Size * .35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.shade300,
                ),
                child: Center(child: Icon(Icons.person, color: Colors.blue, size: Size * .18,)),
              )
          ),


          Positioned(
            top: Size * .41,
              right: Size * .22,
              child: Bigtext(text: 'David Motion', space: 0, fontsize: Size * .06,)),


          Positioned(
              top: Size * .5,
              right: Size * .13,
              child: Bigtext(text: 'Motion128@gmail.com', space: 0, fontsize: Size * .042,)),

          GestureDetector(
            child: Positioned(
                child: Container(
                  height: Size * .2,
                  width: Size * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red
                  ),
                )),
          ),


        ],
      )
    );
  }
}
