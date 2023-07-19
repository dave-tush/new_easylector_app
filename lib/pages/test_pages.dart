import 'package:flutter/material.dart';

import '../widgets/description_button.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool isTrue = false;
  // List <bool> isTrue =  [];
  int numberOfQuestions = 1;
  double values = 0.0285714285714286;
  void texts() {
    setState(() {
      if (numberOfQuestions <= 34) {
        numberOfQuestions++;
        values = values + 0.0285714285714286;
      }
    });
  }

  void linerProgressIcon() {
    double newValues = values;
    setState(() {
      newValues = values * 35;
      print("Linear");
    });
  }

  voidLoop() {
    if (numberOfQuestions <= 35) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$numberOfQuestions/35",
                // "01/35",
                style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Text(
                "20:23",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              child: LinearProgressIndicator(
                minHeight: 10,
                color: Colors.red,
                value: values,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "PHY 101",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Card(
            elevation: 1,
            shadowColor: Colors.grey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$numberOfQuestions",
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet"
                    "consectetur adipiscing elit,"
                    "sed do eiusmod tempor"
                    "incididunt ut labore et dolore"
                    "ullamco laboris nisi ut aliquip ex ea commodo consequat",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: answers("Lorem ipsum dolor sit amet", () {
                      setState(() {
                        isTrue = !isTrue;
                      });
                    },index),
                  );
                }),
          ),
          numberOfQuestions <= 34
              ? Buttons(
                  text: 'NEXT',
                  color: Colors.white,
                  pressedButton: texts,
                  // linerProgressIcon,
                  buttonColor: Colors.red,
                )
              : Buttons(
                  text: "Submit",
                  color: Colors.white,
                  pressedButton: () =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      duration: Duration(milliseconds: 100),
                      content: Text("Submitted"),
                    ),
                  ),
                  buttonColor: Colors.red,
                ),
        ],
      );
    } else {
      return const Text("data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF6F6F6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: voidLoop(),
          ),
        ),
      ),
    );
  }

  Row answers(String text, pressedButton, int index) {
    return Row(
      children: [
        InkWell(
          onTap: pressedButton,
          child: isTrue
              ? const Icon(
                  Icons.check_box_outline_blank,
                  color: Colors.red,
                )
              : const Icon(
                  Icons.check_box,
                  color: Colors.red,
                ),
        ),
        const SizedBox(
          width: 30,
        ),
        Text(text),
      ],
    );
  }
}
