import 'package:flutter/material.dart';

import '../widgets/description_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                    child: Image.asset(
                        "assets/images/book-g3ee54beb5_1920 1.png")),
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
                const DescriptionButton(
                  name: "Dimensions",
                  time: "10:00",
                ),
                const SizedBox(
                  height: 10,
                ),
                const  DescriptionButton(
                  name: "Dimensions",
                  time: "10:00",
                ),
                const SizedBox(
                  height: 10,
                ),
                const DescriptionButton(
                  name: "Dimensions",
                  time: "10:00",
                ),
                const SizedBox(
                  height: 10,
                ),
                const DescriptionButton(
                  name: "Dimensions",
                  time: "10:00",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Buttons(
                  text: "START NOW",
                  color: Colors.white,
                  pressedButton: null,
                  buttonColor: Colors.red,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
