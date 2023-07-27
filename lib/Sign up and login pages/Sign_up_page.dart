import 'package:flutter/material.dart';
import 'package:new_easylector_app/Sign%20up%20and%20login%20pages/login_page.dart';
import '../foundation/color_house/colors.dart';
import '../foundation/text_widget/Big_text.dart';
import '../foundation/text_widget/Small_text.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({Key? key}) : super(key: key);

  @override
  State<Signup_page> createState() => _Create_EmailState();
}

class _Create_EmailState extends State<Signup_page> with RegisterAuth{
  @override
  Widget build(BuildContext context) {

    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: W/8,
                    ),
                    Padding(
                        padding: const  EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      // width: 236,
                      width: W,
                      height: W/15,
                      child: Bigtext(text: "Welcome to easylector", space: 0, fontsize: 23, color: MyColors.maincolor,textAlign: TextAlign.center,),
                    ),
                    ),

                    Padding(
                        padding: const  EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Smalltext(text: "Create an account", fontsize: 15, space:1, textAlign: TextAlign.center,),

                        Smalltext(text: "by filling in your detail", fontsize: 15, space:1, textAlign: TextAlign.center,),
                      ],
                    ),
                    ),

                    Padding(
                        padding: const  EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        decoration: buildInputDecoration("Full name"),
                        validator: InputValidator.emptyCheck("Full name can't be empty"),
                      ),
                    ),

                    Padding(
                        padding: const  EdgeInsets.symmetric(vertical: 5),
                    child: TextFormField(
                      decoration: buildInputDecoration("Email"),
                      validator: InputValidator.email,
                    ),
                    ),

                    Padding(
                        padding: const  EdgeInsets.symmetric(vertical: 5),
                    child:TextFormField(
                      decoration: buildInputDecoration("Username"),
                      validator: InputValidator.emptyCheck("Username can't be empty"),
                    ),
                    ),

                    Padding(
                        padding: const  EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        obscureText: visiblePassword,
                        decoration: buildInputDecoration("Password", true),
                        validator: InputValidator.password,
                        onChanged: (t) {
                          InputValidator.passwordText = t;
                        },
                      ),
                    ),

                    Padding(
                        padding: const  EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        obscureText: visiblePassword,
                        decoration: buildInputDecoration("Confirm Password", true),
                        validator: InputValidator.password,
                        onChanged: (t) {
                          InputValidator.confirmPasswordText = t;
                        },
                      ),

                    ),



                    Container (
                      width: W/1.07,
                      height: W/9,

                      child: ElevatedButton(
                        onPressed: () {
                          register();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.maincolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child:  Text("Sign up", style: TextStyle(color: Colors.white)),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 1.5,
                            width: W/3,
                            color: Colors.black,
                          ),

                          Container(
                            child: Smalltext(text: 'OR', fontsize: 15, space: 0,),
                          ),

                          Container(
                            height: 1.5,
                            width: W/3,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Container(
                            height: H/14,
                            width: W/7,
                            child:  MaterialButton(
                                padding: const EdgeInsets.all(5),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: Image(image: AssetImage("assets/images/slider/google.png"), fit: BoxFit.cover,),
                                onPressed: () {}),
                          ),


                          Container(
                            height: H/18,
                            width: W/8.5,
                            child:  MaterialButton(
                                padding: const EdgeInsets.all(5),
                                color: MyColors.fb_blue,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: Image(image: AssetImage("assets/images/slider/fb1.png"), fit: BoxFit.cover,),
                                onPressed: () {}),
                          ),



                          Container(
                            height: H/14,
                            width: W/7,
                            child:  MaterialButton(
                                padding: const EdgeInsets.all(5),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: Image(image: AssetImage("assets/images/slider/apple.png"), fit: BoxFit.cover,),
                                onPressed: () {}),
                          ),
                        ],
                      ),
                    ),



                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Smalltext(text:"Already have an account ? ", fontsize: 14, space: 0,),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Login_page()),
                                );
                              },
                              child: Smalltext(text:"login", fontsize: 14, space: 0, color: Colors.red,)),
                        ],
                      ),
                    ),




                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }















  InputDecoration buildInputDecoration(hintText, [eyeVisible = false]) {
    var outlineInputBorder = OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(10)
    );

    return InputDecoration(
      suffixIcon: eyeVisible ? IconButton(
        icon: Icon(
          visiblePassword ? Icons.visibility : Icons.visibility_off,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            visiblePassword = !visiblePassword;
          });
        },
      )
          : const SizedBox.shrink(),

      hintText: hintText,
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      border: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: MyColors.maincolor.withOpacity(0.6)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }



  @override
  Future register() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        isLoading = true;
      });
      if (rememberMe) {
        print("saved");
      }
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        isLoading = false;
      });
    }
    return null;
  }
}



mixin RegisterAuth {
  GlobalKey<FormState> _formKey = GlobalKey();
  bool rememberMe = false;
  bool visiblePassword = false;
  bool isLoading = false;
  Future register();
}





class InputValidator {
  static String? confirmPasswordText;
  static String? passwordText;
  static String? emailText;
  static String? name;

  static emptyCheck(String msg) {
    return (t) {
      if (t.isEmpty || t == null) return msg;
      return null;
    };
  }

  static String? email(String? t) {
    if (t!.isEmpty) return "Email can't be empty";
    return null;
  }

  static String? password(String? t) {
    if (t!.isEmpty) return "Password can't be empty";
    if (confirmPasswordText != passwordText) return "Password not matched";
    return null;
  }
}



