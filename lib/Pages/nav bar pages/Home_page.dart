import 'package:flutter/material.dart';
import 'package:new_easylector_app/config/theme.dart';
import 'package:new_easylector_app/foundation/color_house/colors.dart';
import 'package:new_easylector_app/foundation/text_widget/Big_text.dart';
import 'package:new_easylector_app/pages/sub%20widget%20inside%20home%20page/Suggested_topics.dart';

import '../../foundation/text_widget/Small_text.dart';
import '../../widgets/search_field.dart';
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
    List sub = [
      'MTH101',
      'BIO101',
      'CHM101',
      'PHY101',
      'LIB101',
      'GNS101',
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0,bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: H / 18,
                      width: W / 8,
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                        child: Icon(
                          Icons.person_sharp,
                          size: IconSizes.lg,
                          color: Colors.blue.shade600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: SizedBox(
                          width: W / 1.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Bigtext(
                                text: 'Hola, David',
                                space: 1,
                                fontsize: FontSizes.s20,
                                textAlign: TextAlign.left,
                                color: Theme.of(context).primaryColor,
                              ),
                              Smalltext(
                                text: 'keep meeeting your target',
                                space: 0,
                                fontsize: FontSizes.s16,
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
                          size: IconSizes.md,
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
                      child: const Search_bar(),
                    ),
                    Container(
                      color: Colors.white,
                      width: W / 6,
                      height: H / 20,
                      child: Icon(
                        Icons.filter_list,
                        color: MyColors.maincolor,
                        size: IconSizes.lg,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Insets.sm),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Bigtext(
                      text: 'Suggested Topics',
                      space: 1,
                      fontsize: FontSizes.s16,
                      color: Colors.black,
                    ),
                    SizedBox(width: W / 2.3),
                    Bigtext(
                      text: 'See All',
                      space: 1,
                      fontsize: FontSizes.s16,
                      color: MyColors.maincolor,
                    )
                  ],
                ),
              ),
              const SuggestWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Bigtext(
                    text: 'Courses',
                    space: 1,
                    fontsize: FontSizes.s16,
                    color: Colors.black,
                  ),
                  SizedBox(width: W / 2.3),
                  Bigtext(
                    text: 'See All',
                    space: 1,
                    fontsize: FontSizes.s16,
                    color: MyColors.maincolor,
                  )
                ],
              ),
              const Courses_under_homepage(),
            ],
          ),
        ),
      ),
    );
  }
}
