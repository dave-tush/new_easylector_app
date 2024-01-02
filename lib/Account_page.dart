// import 'package:flutter/material.dart';
// import 'package:new_easylector_app/foundation/Column%20house/build_row.dart';
// import 'package:new_easylector_app/foundation/text_widget/Small_text.dart';
// import 'package:new_easylector_app/foundation/theme%20house/Icon_theme_button.dart';
// import '../../foundation/color_house/colors.dart';
// import '../../foundation/text_widget/Big_text.dart';
//
// class Profile_page extends StatefulWidget {
//   const Profile_page({super.key});
//
//   @override
//   State<Profile_page> createState() => _Profile_pageState();
// }
//
// class _Profile_pageState extends State<Profile_page> {
//   @override
//   Widget build(BuildContext context) {
//     var sizes = MediaQuery.of(context).size;
//     var H = sizes.height;
//
//     double Size = MediaQuery.of(context).size.width;
//
//     final _iconist = <Icon>[
//       Icon(Icons.videocam, color: MyColors.maincolor, size: Size * .08),
//       Icon(
//         Icons.video_collection,
//         color: MyColors.maincolor,
//         size: Size * .08,
//       ),
//       Icon(
//         Icons.star,
//         color: MyColors.maincolor,
//         size: Size * .08,
//       )
//     ];
//
//     final _iconi = <Icon>[
//       Icon(Icons.favorite_border_outlined,
//           color: MyColors.maincolor, size: Size * .08),
//       Icon(
//         Icons.download,
//         color: MyColors.maincolor,
//         size: Size * .08,
//       ),
//       Icon(
//         Icons.flag_outlined,
//         color: MyColors.maincolor,
//         size: Size * .08,
//       ),
//       Icon(
//         Icons.leaderboard,
//         color: MyColors.maincolor,
//         size: Size * .08,
//       ),
//       Icon(
//         Icons.add_alert_rounded,
//         color: MyColors.maincolor,
//         size: Size * .08,
//       ),
//       Icon(
//         Icons.logout,
//         color: MyColors.maincolor,
//         size: Size * .07,
//       )
//     ];
//
//     final _tex = ['10 Hours', '2 Courses', '3.5'];
//
//     final _texi = [
//       'Favourite',
//       'Download',
//       'Achievement',
//       'Progress',
//       'Learning Reminder',
//       'Log Out'
//     ];
//
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             height: H,
//             child: Stack(
//                 children: [
//               Positioned(
//                 top: Size * .135,
//                 left: Size * .033,
//                 child: Icon(
//                   Icons.arrow_back,
//                   color: MyColors.maincolor,
//                 ),
//               ),
//               Positioned(
//                 top: Size * .135,
//                 left: Size * .36,
//                 child: Bigtext(
//                   text: 'My Profile',
//                   space: 0,
//                   fontsize: Size * .05,
//                 ),
//               ),
//               Positioned(
//                 top: Size * .135,
//                 right: Size * .03,
//                 child: Icon(
//                   Icons.settings,
//                   color: MyColors.maincolor,
//                 ),
//               ),
//               Positioned(
//                 top: Size * .1,
//                 right: Size * .19,
//                 child: IconThemeButton(),
//               ),
//               Positioned(
//                   top: Size * .255,
//                   left: Size * .033,
//                   child: Container(
//                     height: Size * .34,
//                     width: Size * .34,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(Size * .2),
//                       color: Colors.grey.shade300,
//                     ),
//                     child: Center(
//                         child: Icon(
//                       Icons.person,
//                       color: Colors.blue,
//                       size: Size * .18,
//                     )),
//                   )),
//               Positioned(
//                   top: Size * .255,
//                   right: Size * .235,
//                   child: Bigtext(
//                     text: 'David Motion',
//                     space: 0,
//                     fontsize: Size * .057,
//                   )),
//               Positioned(
//                   top: Size * .34,
//                   right: Size * .15,
//                   child: Bigtext(
//                     text: 'Motion128@gmail.com',
//                     space: 0,
//                     fontsize: Size * .04,
//                   )),
//               Positioned(
//                 top: Size * .45,
//                 right: Size * .14,
//                 child: GestureDetector(
//                   child: Container(
//                     height: Size * .12,
//                     width: Size * .43,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10), color: Colors.red),
//                     child: Center(
//                         child: Bigtext(
//                       text: 'Edit Profile',
//                       space: 0.3,
//                       fontsize: Size * .048,
//                       color: Colors.white,
//                     )),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: Size * .655,
//                 left: Size * .036,
//                 child: RowBuilder(
//                   itemBuilder: (BuildContext context, int index) {
//                     return InkWell(
//                       onTap: () {},
//                       child: Container(
//                         margin: EdgeInsets.symmetric(horizontal: Size * .033),
//                         height: Size * .16,
//                         width: Size * .25,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.white),
//                         child: Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               _iconist[index],
//                               Smalltext(
//                                   text: _tex[index].toString(),
//                                   fontsize: Size * .03,
//                                   space: 0)
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                   itemCount: 3,
//                 ),
//               ),
//
//
//                  for(int index = 0; index < _iconi.length; index++)
//
//               Positioned(
//                 top: Size * .8,
//                 height: MediaQuery.of(context).size.height,
//                 width: Size,
//                 child: ListView(
//                   children: [
//                     GestureDetector(
//                       child: Container(
//                           margin: EdgeInsets.symmetric(vertical: 3),
//                           height: Size * .14,
//                           width: Size,
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                   top: Size * .04,
//                                   left: Size * .045,
//                                   child: _iconi[index]),
//                               Positioned(
//                                   top: Size * .052,
//                                   left: Size * .147,
//                                   child: Smalltext(
//                                     text: _texi[index].toString(),
//                                     fontsize: Size * .05,
//                                     space: 0,
//                                     color: Colors.black,
//                                   )),
//                               Positioned(
//                                   top: Size * .04,
//                                   right: Size * .04,
//                                   child: Icon(
//                                     Icons.arrow_forward_ios,
//                                     color: MyColors.maincolor,
//                                   )),
//                             ],
//                           ),
//                         ),
//                       )
//                   ],
//                 ),
//               )
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//





import 'package:flutter/material.dart';
import 'package:new_easylector_app/foundation/Column%20house/build_row.dart';
import 'package:new_easylector_app/foundation/text_widget/Small_text.dart';
import 'package:new_easylector_app/foundation/theme%20house/Icon_theme_button.dart';
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
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;

    double Size = MediaQuery.of(context).size.width;

    final _iconist = <Icon>[
      Icon(Icons.videocam, color: MyColors.maincolor, size: Size * .08),
      Icon(
        Icons.video_collection,
        color: MyColors.maincolor,
        size: Size * .08,
      ),
      Icon(
        Icons.star,
        color: MyColors.maincolor,
        size: Size * .08,
      )
    ];

    final _iconi = <Icon>[
      Icon(Icons.favorite_border_outlined,
          color: MyColors.maincolor, size: Size * .08),
      Icon(
        Icons.download,
        color: MyColors.maincolor,
        size: Size * .08,
      ),
      Icon(
        Icons.flag_outlined,
        color: MyColors.maincolor,
        size: Size * .08,
      ),
      Icon(
        Icons.leaderboard,
        color: MyColors.maincolor,
        size: Size * .08,
      ),
      Icon(
        Icons.add_alert_rounded,
        color: MyColors.maincolor,
        size: Size * .08,
      ),
      Icon(
        Icons.logout,
        color: MyColors.maincolor,
        size: Size * .07,
      )
    ];

    final _tex = ['10 Hours', '2 Courses', '3.5'];

    final _texi = [
      'Favourite',
      'Download',
      'Achievement',
      'Progress',
      'Learning Reminder',
      'Log Out'
    ];

    return SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: Size * .05,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Size * .025, vertical: Size * .025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: MyColors.maincolor,
                ),

                Bigtext(
                  text: 'My Profile',
                  space: 0,
                  fontsize: Size * .05,
                ),

                Icon(
                  Icons.settings,
                  color: MyColors.maincolor,
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: Size * .05, horizontal: Size * .04),
                child: Container(
                  height: Size * .34,
                  width: Size * .34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Size * .2),
                    color: Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: Size * .18,
                    ),
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bigtext(
                    text: 'David Motion',
                    space: 0,
                    fontsize: Size * .057,
                  ),


                  Bigtext(
                    text: 'Davidomotion@gmail.com',
                    space: -0.6,
                    fontsize: Size * .045,
                  ),

                  SizedBox(height: Size * .05,),

                  GestureDetector(
                    child: Container(
                      height: Size * .12,
                      width: Size * .43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Bigtext(
                          text: 'Edit Profile',
                          space: 0.3,
                          fontsize: Size * .048,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),



          Padding(
            padding:EdgeInsets.symmetric(vertical: Size * .06),
            child: RowBuilder(
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: Size * .033),
                    height: Size * .16,
                    width: Size * .25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _iconist[index],
                          Smalltext(
                            text: _tex[index].toString(),
                            fontsize: Size * .03,
                            space: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),


          // Iterate over _iconi list
          for (int index = 0; index < _iconi.length; index++)
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 3),
                height: Size * .14,
                width: Size,
                child: Stack(
                  children: [
                    Positioned(
                      top: Size * .04,
                      left: Size * .045,
                      child: _iconi[index],
                    ),
                    Positioned(
                      top: Size * .052,
                      left: Size * .147,
                      child: Smalltext(
                        text: _texi[index].toString(),
                        fontsize: Size * .05,
                        space: 0,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      top: Size * .04,
                      right: Size * .04,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: MyColors.maincolor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
