import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_easylector_app/config/theme.dart';
import 'package:new_easylector_app/foundation/color_house/colors.dart';
import 'package:new_easylector_app/foundation/text_widget/Big_text.dart';
import 'package:new_easylector_app/foundation/text_widget/Small_text.dart';

class SuggestWidget extends StatefulWidget {
  const SuggestWidget({super.key});

  @override
  State<SuggestWidget> createState() => _SuggestWidgetState();
}

class _SuggestWidgetState extends State<SuggestWidget> {
  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;

    List topic = [
      'Set Theory',
      'Cell Division',
      'Organic',
      'Fluid',
      'Research',
      'listening Skill',
    ];
    List sub = [
      'MTH101',
      'BIO101',
      'CHM101',
      'PHY101',
      'LIB101',
      'GNS101',
    ];

    return Container(
      width: W,
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: H / 5.8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sub.length,
        itemBuilder: (context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),

            width: W / 3,
            child: Padding(
              padding: const EdgeInsets.all(Insets.sm),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: W / 8,
                    height: H / 16,
                    child: CircleAvatar(
                      backgroundColor: MyColors.maincolor,
                    ),
                  ),
                  Bigtext(
                    text: topic[index].toString(),
                    space: 0,
                    fontsize:FontSizes.s16,
                  ),
                  Smalltext(
                    text: sub[index].toString(),
                    fontsize: FontSizes.s12,
                    space: 0,
                  ),
                  SizedBox(
                    width: W / 4,
                    height: H / 35,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: MyColors.maincolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: BorderSide(
                            width: 1,
                            color: MyColors.maincolor,
                          ),
                        ),
                        onPressed: () {},
                        child: Bigtext(
                          text: 'View',
                          space: 2,
                          fontsize: FontSizes.s14,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
