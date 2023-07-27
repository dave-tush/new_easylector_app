import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_easylector_app/foundation/color_house/colors.dart';
import 'package:new_easylector_app/foundation/text_widget/Big_text.dart';
import 'package:new_easylector_app/foundation/text_widget/Small_text.dart';

class Suggested extends StatefulWidget {
  const Suggested({super.key});

  @override
  State<Suggested> createState() => _SuggestedState();
}

class _SuggestedState extends State<Suggested> {
  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;

    List topic = ['Set Theory','Cell Division','Organic chemistry','Fluid','Research','listening Skill',];
    List sub = ['MTH101','BIO101','CHM101','PHY101','LIB101','GNS101',];

    return Container(
      width: W,
      margin: EdgeInsets.symmetric(vertical: 5),
      height: H/5.8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sub.length,
        itemBuilder: (context,int index) {
          return Container(

            margin: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            width: W/3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: W/8,
                  height: H/16,
                  child: CircleAvatar(
                    backgroundColor: MyColors.maincolor,
                  ),
                ),

                Bigtext(text: topic[index].toString(), space: 0, fontsize: W/28),
                Smalltext(text: sub[index].toString(), fontsize: W/31, space: 0),

                Container(
                  width: W/4.8,
                  height: H/40,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: MyColors.maincolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        side: BorderSide(width: 1, color: MyColors.maincolor,),
                      ),
                      onPressed: () {},
                      child: Bigtext(text: 'View', space: 1, fontsize: W/30, color: Colors.white,)
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
