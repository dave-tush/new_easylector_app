import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:new_easylector_app/Sign%20up%20and%20login%20pages/Sign_up_page.dart';
import 'package:new_easylector_app/data.dart';
import 'package:new_easylector_app/models/signIn.dart';
import '../Pages/General_page.dart';
import '../foundation/color_house/colors.dart';
import '../foundation/text_widget/Big_text.dart';
import '../foundation/text_widget/Small_text.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<SignIn> _signIn = [];
  final data = Data();

  bool visiblePassword = false;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  Future signIn(BuildContext context) async {
    var data = json.encode({
      "username": usernameController.text,
      "password": passwordController.text
    });
    http.Response response = await http.post(
        Uri.parse('http://192.168.137.1:5000/user/log'),
        body: data,
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "Authorization": ""
        });
    if (response.statusCode == 200) {
      // Future.delayed(Duration(seconds: 3));
      setState(() {
        const CircularProgressIndicator();
      });

      // print("entered");
      try {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => general_page(),
          ),
        );
        // return const general_page();
      } catch (e) {
        return e.toString();
      }
    } else {
      print(response.reasonPhrase);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // signIn();
  }

  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    var H = sizes.height;
    var W = sizes.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              // key: _formKey,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: W / 5.5,
                    ),
                    SizedBox(
                      width: W,
                      height: W / 15,
                      child: Bigtext(
                        text: "WELCOME BACK",
                        space: 0,
                        fontsize: 23,
                        color: MyColors.maincolor,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: usernameController,
                      decoration: buildInputDecoration("Username"),
                      validator:
                          InputValidator.emptyCheck("Username can't be empty"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        obscureText: visiblePassword,
                        controller: passwordController,
                        decoration: buildInputDecoration("Password", true),
                        validator: InputValidator.password,
                        onChanged: (t) {
                          InputValidator.passwordText = t;
                        },
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        width: W,
                        child: Smalltext(
                          text: 'Forgot Password ?',
                          fontsize: 15,
                          color: Colors.red,
                          space: 0,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: W / 1.07,
                      height: W / 9,
                      child: ElevatedButton(
                        onPressed: () {
                          signIn(context);
                        },
                        // SignIn();
                        // register();

                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.maincolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
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
                            fontsize: 15,
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
                        SizedBox(
                          height: H / 14,
                          width: W / 7,
                          child: MaterialButton(
                            padding: const EdgeInsets.all(5),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: const Image(
                              image:
                                  AssetImage("assets/images/slider/google.png"),
                              fit: BoxFit.cover,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: H / 18,
                          width: W / 8.5,
                          child: MaterialButton(
                            padding: const EdgeInsets.all(5),
                            color: MyColors.fb_blue,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: const Image(
                              image: AssetImage("assets/images/slider/fb1.png"),
                              fit: BoxFit.cover,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: H / 14,
                          width: W / 7,
                          child: MaterialButton(
                            padding: const EdgeInsets.all(5),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: const Image(
                              image:
                                  AssetImage("assets/images/slider/apple.png"),
                              fit: BoxFit.cover,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Smalltext(
                            text:
                                // user.email,
                                "Don't have an account ? ",
                            fontsize: 14,
                            space: 0,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const signup_page(),
                                  ),
                                );
                              },
                              child: Smalltext(
                                text: "Create one ",
                                fontsize: 14,
                                space: 0,
                                color: Colors.red,
                              )),
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
      borderRadius: BorderRadius.circular(10),
    );

    return InputDecoration(
      suffixIcon: eyeVisible
          ? IconButton(
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      border: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 0.5, color: MyColors.maincolor.withOpacity(0.6)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  // @override
  // Future<void> register() async {
  //   if (_formKey.currentState!.validate()) {
  //     _formKey.currentState!.save();
  //     setState(() {
  //       isLoading = true;
  //     });
  //     if (rememberMe) {
  //       print("saved");
  //     }
  //     await Future.delayed(const Duration(seconds: 1));
  //     setState(() {
  //       isLoading = false;
  //     });
  //   }
  // }
  // Future SignIn() async {
  //   showDialog(context: context, builder: (context) => Center(child: CircularProgressIndicator(),));
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: usernameController.text.trim(),
  //       password: passwordController.text.trim(),
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     // return e.toString();
  //     print(e.toString());
  //
  //   }
  //     Navigator.pop(context);
  // }
}

// mixin RegisterAuth {
//   GlobalKey<FormState> _formKey = GlobalKey();
//   bool rememberMe = false;
//   bool isLoading = false;
//   Future<void> register();
// }

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
