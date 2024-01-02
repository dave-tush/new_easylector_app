import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:new_easylector_app/Sign%20up%20and%20login%20pages/login_page.dart';
import 'package:new_easylector_app/config/theme.dart';
import 'package:new_easylector_app/models/firebase_auth.dart';
import '../Pages/General_page.dart';
import '../foundation/color_house/colors.dart';
import '../foundation/text_widget/Big_text.dart';
import '../foundation/text_widget/Small_text.dart';
import '../http.dart';
import '../widgets/iconImageWidget.dart';

class signup_page extends StatefulWidget {
  const signup_page({Key? key}) : super(key: key);

  @override
  State<signup_page> createState() => _Create_EmailState();
}

class _Create_EmailState extends State<signup_page> with RegisterAuth {
  // final FirebaseAuthService _auth = FirebaseAuthService();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;
    // final newData = Http();

    return Scaffold(
      body: StreamBuilder(
        builder: (context, snapShot) {
          if (snapShot.connectionState ==  ConnectionState.waiting) {
            return const Center (child: CircularProgressIndicator(),);
          } else {
            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Form(
                    key: _formKey,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: W / 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: SizedBox(
                              // width: 236,
                              width: W,
                              height: W / 15,
                              child: Bigtext(
                                text: "Welcome to easy lector",
                                space: 0,
                                fontsize: FontSizes.s24,
                                color: MyColors.maincolor,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                Smalltext(
                                  text: "Create an account",
                                  fontsize: FontSizes.s16,
                                  space: 1,
                                  textAlign: TextAlign.center,
                                ),
                                Smalltext(
                                  text: "by filling in your detail",
                                  fontsize: FontSizes.s16,
                                  space: 1,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          // TextFormField(
                          //   decoration: buildInputDecoration("Full name"),
                          //   validator:
                          //       InputValidator.emptyCheck("Full name can't be empty"),
                          // ),
                          const SizedBox(
                            height: Insets.md,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: buildInputDecoration("Email"),
                            validator: InputValidator.email,
                          ),
                          const SizedBox(
                            height: Insets.md,
                          ),
                          TextFormField(
                            controller: nameController,
                            decoration: buildInputDecoration("Username"),
                            validator:
                            InputValidator.emptyCheck("Username can't be empty"),
                          ),
                          const SizedBox(
                            height: Insets.md,
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: visiblePassword,
                            decoration: buildInputDecoration("Password", true),
                            validator: InputValidator.password,
                            onChanged: (t) {
                              InputValidator.passwordText = t;
                            },
                          ),
                          const SizedBox(
                            height: Insets.md,
                          ),
                          TextFormField(
                            // controller: passwordController,
                            obscureText: visiblePassword,
                            decoration:
                            buildInputDecoration("Confirm Password", true),
                            validator: InputValidator.password,
                            onChanged: (t) {
                              InputValidator.confirmPasswordText = t;
                            },
                          ),
                          const SizedBox(
                            height: Insets.md,
                          ),
                          SizedBox(
                            width: W / 1.07,
                            height: W / 9,
                            child: ElevatedButton(
                              onPressed: () {
                                registerUser();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.maincolor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: const Text(
                                "Sign up",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 1.5,
                                  width: W / 3,
                                  color: Colors.black,
                                ),
                                Smalltext(
                                  text: 'OR',
                                  fontsize: FontSizes.s16,
                                  space: 0,
                                ),
                                Container(
                                  height: 1.5,
                                  width: W / 3,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              iconImage("assets/images/slider/google.png"),
                              iconImage("assets/images/slider/fb1.png"),
                              iconImage("assets/images/slider/apple.png"),
                            ],
                          ),
                          const SizedBox(
                            height: Insets.lg,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Smalltext(
                                text: "Already have an account?",
                                fontsize: FontSizes.s14,
                                space: 0,
                              ),
                              const SizedBox(
                                width: Insets.sm,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LoginPage(),
                                      ),
                                    );
                                  },
                                  child: Smalltext(
                                    text: "login",
                                    fontsize: FontSizes.s14,
                                    space: 0,
                                    color: Colors.red,
                                  )),
                            ],
                          ),
                          // CircularProgressIndicator()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        }
      , stream: null,)

    );
  }

  InputDecoration buildInputDecoration(hintText, [eyeVisible = false]) {
    var outlineInputBorder = OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
        borderRadius: Corners.smBorder);
    return InputDecoration(
      suffixIcon: eyeVisible
          ? InkWell(
              child: Icon(
                visiblePassword ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onTap: () {
                setState(() {
                  visiblePassword = !visiblePassword;
                });
              },
            )
          : null,
      hintText: hintText,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      border: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 0.5, color: MyColors.maincolor.withOpacity(0.6)),
        borderRadius: Corners.smBorder,
      ),
    );
  }

  Future<Widget> registerUser() async {
     var data =
    json.encode({
      "userName": nameController.text,
      "email": emailController.text,
      "password": passwordController.text,
    });
    http.Response res = await http.post(
      Uri.parse('http://192.168.137.1:5000/user/register'),
      body: data,
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        'Authorization': ""}
    );
    if (res.statusCode == 200) {
      print("registered successful");
      return const general_page();
    } else {
      return Container();
      print("failed to register: ${res.reasonPhrase}");
    }
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
  final GlobalKey<FormState> _formKey = GlobalKey();
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
