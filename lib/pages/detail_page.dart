import 'package:flutter/material.dart';

import '../widgets/description_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isTapped = false;
  void favouriteButton() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back),
                    ),
                    const Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                        onTap: favouriteButton,
                        child: isTapped
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child:
                      Image.asset("assets/images/book-g3ee54beb5_1920 1.png"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PHY 101",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "8 hrs 10 Lessons",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "orem ipsum dolor sit amet, consectetur adipiscing elit. Nam sollicitudin sapien nibh, id efficitur ex porta vitae. Nunc vel risus non ipsum tincidunt ultricesavida eros, quis rutrum diam. Nullam maximus."),
                SizedBox(
                  height: 290,
                  child: ListView.builder(
                      itemCount: topics.length,
                      itemBuilder: (BuildContext context, int index) => Column(
                            children: [
                              DescriptionButton(
                                name: topics[index],
                                time: time[index],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                            ],
                          )),
                ),
                Buttons(
                  text: "START NOW",
                  color: Colors.white,
                  pressedButton: () =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      duration: Duration(milliseconds: 500),
                      content: Text("Started already"),
                    ),
                  ),
                  buttonColor: Colors.red,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> time = [
    "10:00",
    "20:00",
    "45:24",
    "30:10",
  ];
  List<String> topics = ["Dimensions", "Vectors", "projectile", "Motion"];
  int numberOfQuestions = 1;
  void texts() {
    setState(() {
      if (numberOfQuestions <= 34) {
        numberOfQuestions++;
      }
    });
  }
}
