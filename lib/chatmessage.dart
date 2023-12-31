import 'package:flutter/material.dart';

class chatMessages extends StatelessWidget {
  const chatMessages({Key? key, required this.text, required this.sender})
      : super(key: key);
  final String text;
  final String sender;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            child: Text(
              sender[0],
            ),
          ),
        ),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sender,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(text),
            )
          ],
        ))
      ],
    );
  }
}
