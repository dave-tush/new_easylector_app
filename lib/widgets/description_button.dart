import 'package:flutter/material.dart';
class DescriptionButton extends StatelessWidget {
  final String name;
  final String time;
  const DescriptionButton({
    super.key,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.play_circle,
                    color: Colors.red,
                  ),
                  Text(name),
                ],
              ),
              Text(
                time,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Buttons extends StatelessWidget {
  final String text;
  final Color color;
  final pressedButton;
  final Color buttonColor;
  const Buttons({
    Key? key,
    required this.text,
    required this.color,
    required this.pressedButton,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(milliseconds: 500),
          content: Text("Please select your course and ask questions"),
        ),
      ),
      child: Material(
        elevation: 2,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child:  Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}