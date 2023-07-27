import 'package:flutter/material.dart';
import 'package:new_easylector_app/Sign%20up%20and%20login%20pages/Sign_up_page.dart';

import '../foundation/color_house/colors.dart';
import '../foundation/text_widget/Big_text.dart';

class First_Intro_page extends StatelessWidget {
  const First_Intro_page({super.key});

  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              SizedBox(height: H/25,),

              Container(
                height: H/4,
                width: W,
                child: Image.asset('assets/images/slider/fblogo.png'),
              ),

              Container(
                width: W/1.25,
                height: H/22,
                  child: Bigtext(text: "Welcome to EasyLector", space: 1, fontsize: W/15, color: MyColors.maincolor, textAlign: TextAlign.center,)),

              Container(
                height: H/11,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: W/1.54,
                        height: H/38,
                        child: Bigtext(text: "This is an Online learning app to", space: 1, fontsize: W/27.3,textAlign: TextAlign.center,)),


                    Container(
                        width: W/1.54,
                        height: H/38,
                        child: Bigtext(text: "help lautech student gain", space: 1, fontsize: W/27.3,textAlign: TextAlign.center,)),

                    Container(
                        width: W/1.54,
                        height: H/38,
                        child: Bigtext(text: "access to large resources", space: 1, fontsize: W/27.3, textAlign: TextAlign.center,)),
                  ],
                ),
              ),

              Container(
                width: W/4,
                height: H/30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.circle, color: MyColors.maincolor, size: 15,),
                    Icon(Icons.circle, color: Colors.grey, size: 15,),
                    Icon(Icons.circle, color: Colors.grey, size: 15,),
                  ],
                ),
              ),

              Container(
                height:H/17,
                width: W/1.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: W/3.2,
                      height: H/23,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: MyColors.maincolor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: BorderSide(width: 1, color: MyColors.maincolor,),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Third_page()));
                          },
                          child: Bigtext(text: 'Skip', space: 1, fontsize: 15, color: Colors.white,)
                      ),
                    ),

                    Container(
                      width: W/3.2,
                      height: H/23,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: BorderSide(width: 1, color: MyColors.maincolor,),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Second_page()));
                          },
                          child: Bigtext(text: 'Next', space: 1, fontsize: 15, color:MyColors.maincolor)
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}







class Second_page extends StatelessWidget {
  const Second_page({super.key});

  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              SizedBox(height: 130,),

              Container(
                height: H/4,
                width: W,
                child: Image.asset('assets/images/slider/log.png'),
              ),

              Container(
                  width: W/1.25,
                  height: H/22,
                  child: Bigtext(text: "Anywhere,Anytime", space: 1, fontsize: W/15, color: MyColors.maincolor, textAlign: TextAlign.center,)),

              Container(
                height: H/11,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: W/1.54,
                        height: H/38,
                        child: Bigtext(text: "Learning from the comfort of", space: 1, fontsize: W/27.3,textAlign: TextAlign.center,)),


                    Container(
                        width: W/1.54,
                        height: H/38,
                        child: Bigtext(text: "your home and maximizing", space: 1, fontsize: W/27.3,textAlign: TextAlign.center,)),


                    Container(
                        width: W/1.54,
                        height: H/38,
                        child: Bigtext(text: "your mobile phone", space: 1, fontsize: W/27.3, textAlign: TextAlign.center,)),

                  ],
                ),
              ),

              Container(
                width: W/4,
                height: H/30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.circle, color: Colors.grey, size: 15,),
                    Icon(Icons.circle, color: MyColors.maincolor,size: 15,),
                    Icon(Icons.circle, color: Colors.grey, size: 15,),
                  ],
                ),
              ),


              Container(
                height:H/17,
                width: W/1.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: W/3.2,
                      height: H/23,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: MyColors.maincolor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: BorderSide(width: 1, color: MyColors.maincolor,),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Third_page()));
                          },
                          child: Bigtext(text: 'Skip', space: 1, fontsize: 15, color: Colors.white,)
                      ),
                    ),



                    Container(
                      width: W/3.2,
                      height: H/23,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: BorderSide(width: 1, color: MyColors.maincolor,),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Third_page()));
                          },
                          child: Bigtext(text: 'Next', space: 1, fontsize: 15, color:MyColors.maincolor)
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}





class Third_page extends StatelessWidget {
  const Third_page({super.key});

  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              SizedBox(height: 130,),

              Container(
                height: H/4,
                width: W,
                child: Image.asset('assets/images/slider/log1.png'),
              ),

              Container(
                  width: W/1.25,
                  height: H/22,
                  child: Bigtext(text: "Learning From The Best", space: 1, fontsize: W/15, color: MyColors.maincolor, textAlign: TextAlign.center,)),

              Container(
                height: H/15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: W/1.54,
                        height: H/38,
                        child: Bigtext(text: "learning from the best tutors with", space: 1, fontsize: W/27.3,textAlign: TextAlign.center,)),


                    Container(
                        width: W/1.54,
                        height: H/38,
                        child: Bigtext(text: "proven results and expertise", space: 1, fontsize: W/27.3,textAlign: TextAlign.center,)),


                  ],
                ),
              ),

              Container(
                width: W/4,
                height: H/30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.circle, color: Colors.grey, size: 15,),
                    Icon(Icons.circle, color: Colors.grey, size: 15,),
                    Icon(Icons.circle, color: MyColors.maincolor, size: 15,),
                  ],
                ),
              ),


              Container(
                width: W/3.2,
                height: H/23,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: MyColors.maincolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: BorderSide(width: 1, color: MyColors.maincolor,),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Signup_page()));
                    },
                    child: Bigtext(text: 'Sign Up', space: 1, fontsize: 15, color: Colors.white,)
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}




