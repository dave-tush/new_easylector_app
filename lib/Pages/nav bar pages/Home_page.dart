import 'package:flutter/material.dart';
import 'package:new_easylector_app/Pages/sub%20widget%20inside%20home%20page/Suggested_topics.dart';
import 'package:new_easylector_app/foundation/color_house/colors.dart';
import 'package:new_easylector_app/foundation/text_widget/Big_text.dart';
import 'package:new_easylector_app/foundation/text_widget/Small_text.dart';

import '../../foundation/text_widget/search_field.dart';
import '../sub widget inside home page/courses(home).dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;

    List levels = [0.19, 0.2, 0.5, 0.4, 0.7, 0.2];
    List sub = ['MTH101','BIO101','CHM101','PHY101','LIB101','GNS101',];

    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Theme.of(context).primaryColorDark,
              height: H / 4.2,
              width: W,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: H / 18,
                          width: W / 8,
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                            child: Icon(
                              Icons.person_sharp,
                              size: 30,
                              color: Colors.blue.shade600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                              width: W / 1.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Bigtext(
                                    text: 'Hola, David',
                                    space: 1,
                                    fontsize: W / 22,
                                    textAlign: TextAlign.left,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Smalltext(
                                    text: 'keep meeeting your target',
                                    space: 0,
                                    fontsize: W / 32,
                                    textAlign: TextAlign.left,
                                    color: Theme.of(context).primaryColor,
                                  )
                                ],
                              )),
                        ),
                        Container(
                            height: W / 10,
                            width: W / 10,
                            child: Icon(
                              Icons.notifications,
                              color: Theme.of(context).primaryColor,
                              size: W / 15,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: W / 1.5,
                          height: H / 18,
                          color: Colors.white,
                          child: Search_bar(),
                        ),
                        Container(
                          color: Colors.white,
                          width: W / 8,
                          height: H / 20,
                          child: Icon(
                            Icons.filter_list,
                            color: MyColors.maincolor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Bigtext(
                    text: 'Suggested Topics',
                    space: 1,
                    fontsize: 15,
                    color: Colors.black,
                  ),
                  SizedBox(width: W / 2.3),
                  Bigtext(
                    text: 'See All',
                    space: 1,
                    fontsize: 15,
                    color: MyColors.maincolor,
                  )
                ],
              ),
            ),
            Suggested(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Bigtext(
                    text: 'Courses',
                    space: 1,
                    fontsize: 15,
                    color: Colors.black,
                  ),
                  SizedBox(width: W / 2.3),
                  Bigtext(
                    text: 'See All',
                    space: 1,
                    fontsize: 15,
                    color: MyColors.maincolor,
                  )
                ],
              ),
            ),
            courses_under_homepage(),


          ],
        ),
      );
  }
}
