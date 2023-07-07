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