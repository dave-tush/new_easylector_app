import 'package:flutter/material.dart';
import 'package:new_easylector_app/Pages/nav%20bar%20pages/home/sub%20widget%20inside%20home%20page/Suggested_topics.dart';
import 'package:new_easylector_app/Pages/nav%20bar%20pages/home/sub%20widget%20inside%20home%20page/courses(home).dart';
import 'package:new_easylector_app/foundation/color_house/colors.dart';
import 'package:new_easylector_app/foundation/text_widget/Big_text.dart';
import 'package:new_easylector_app/foundation/text_widget/Small_text.dart';
import '../../../foundation/text_widget/search_field.dart';

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

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Theme.of(context).primaryColorDark,
            height: W * 0.48,
            width: W,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: W * .049),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: W * 0.12,
                        width: W * 0.15,
                        child: CircleAvatar(
                          backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
                          child: Icon(
                            Icons.person_sharp,
                            size: W * .08,
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
                                  fontsize: W * 0.049,
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
                      SizedBox(
                        width: W * .6,
                        height: H * .056,
                        child: const Search_bar(),
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
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Bigtext(
                  text: 'Suggested Topics',
                  space: 1,
                  fontsize: 15,
                  color: Colors.black,
                ),
                SizedBox(width: W / 2.9),
                Bigtext(
                  text: 'See All',
                  space: 1,
                  fontsize: W * 0.04,
                  color: MyColors.maincolor,
                )
              ],
            ),
          ),
          const Suggested(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Bigtext(
                  text: 'Courses',
                  space: 1,
                  fontsize: W * 0.04,
                  color: Colors.black,
                ),
                SizedBox(width: W / 2.3),
                Bigtext(
                  text: 'See All',
                  space: 1,
                  fontsize: 15,
                  color: MyColors.maincolor,
                ),
              ],
            ),
          ),
          const courses_under_homepage(),
        ],
      ),
    );
  }
}
