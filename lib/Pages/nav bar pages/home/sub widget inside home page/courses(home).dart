import 'package:flutter/material.dart';
import 'package:new_easylector_app/foundation/text_widget/Big_text.dart';
import '../../../../foundation/Column house/build_column.dart';
import '../../../../foundation/Column house/build_row.dart';
import '../../../../foundation/color_house/colors.dart';

class courses_under_homepage extends StatefulWidget {
  const courses_under_homepage({super.key});

  @override
  State<courses_under_homepage> createState() => _courses_under_homepageState();
}

class _courses_under_homepageState extends State<courses_under_homepage> {
  @override
  Widget build(BuildContext context) {

    List sub = ['MTH101','BIO101','CHM101','PHY101','LIB101','GNS101',];

    return ColumnBuilder(
        itemBuilder: (BuildContext context, int index){
          return _buildPageItem(index);
        },
        itemCount: sub.length);
  }





  Widget _buildPageItem(int index) {
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;

    List sub = ['MTH101','BIO101','CHM101','PHY101','LIB101','GNS101',];

    return Padding(
      padding: EdgeInsets.only(top:W/35, right: W/30, left: W/30),
      child: Container(
        margin: EdgeInsets.only(bottom: W/30),
        height: H/3.6,
        width: W,
        decoration: const BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
        ),
        child: Stack(
          children: [
            Container(
            width: W,
            height: H/7.2,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: const BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))
            ),
              ),

            Positioned(
          top: H/7.2,
          child: Container(
           width: W/1.07,
            height: H/7.2,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20), bottomRight:Radius.circular(20))
            ),
          ),
        ),

            Positioned(
            top: H/7,
            right: W/1.56,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Bigtext(text: sub[index].toString(), space: 0, fontsize: 20),
            )),

            Positioned(
              top: H/7,
              left: W/1.78,
              child: Padding(
                padding:const EdgeInsets.all(10),
                child: RowBuilder(
                    itemBuilder: (BuildContext context, int index){
                      return SizedBox(
                        height: W/19,
                        width: W/22,
                        child: const CircleAvatar(),
                      );
                      },
                    itemCount: 5),
              ),
            ),

            Positioned(
              top: H/7,
              left: W/1.23,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.more_vert_outlined),
              ),
            ),

            Positioned(
              top: H/4.5,
              right: W/1.82,
                child: SizedBox(
                  width: W/3,
                  height: H/23,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: MyColors.maincolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        side: BorderSide(width: 1, color: MyColors.maincolor,),
                      ),
                      onPressed: () {},
                      child: Bigtext(text: 'Start', space: 1, fontsize: 15, color: Colors.white,)
                  ),
                ),),


            Positioned(
              top: H/4.5,
              left: W/1.87,
              child: SizedBox(
                width: W/3,
                height: H/23,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      side: BorderSide(width: 1, color: MyColors.maincolor,),
                    ),
                    onPressed: () {},
                    child: Bigtext(text: 'Test Yourself', space: 1, fontsize: 15, color: Theme.of(context).primaryColorDark,)
                ),
              ),),

          ],
        ),
      ),
    );
  }
}
