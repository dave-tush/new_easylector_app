import 'package:flutter/material.dart';

import '../widgets/description_button.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int numberOfQuestions = 1;
  double values = 0.02857;
  void texts() {
    setState(() {
      if (numberOfQuestions <= 34) {
        numberOfQuestions++;
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
    for (int i = 0; i <= 35; i++) {
      if (i == 0) {
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
            const Card(
              elevation: 1,
              shadowColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "01",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text(
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
            answers("Lorem ipsum dolor sit amet"),
            const SizedBox(
              height: 20,
            ),
            answers("Lorem ipsum dolor sit amet"),
            const SizedBox(
              height: 20,
            ),
            answers("Lorem ipsum dolor sit amet"),
            const SizedBox(
              height: 20,
            ),
            answers("Lorem ipsum dolor sit amet"),
            const SizedBox(
              height: 20,
            ),
            Buttons(
              text: 'NEXT',
              color: Colors.white,
              pressedButton: linerProgressIcon,
              buttonColor: Colors.red,
            )
          ],
        );
      } else {
        return Text("data");
      }
      ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

  Row answers(
    String text,
  ) {
    return Row(
      children: [
        InkWell(
          child: const Icon(
            Icons.check_box_outline_blank,
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
