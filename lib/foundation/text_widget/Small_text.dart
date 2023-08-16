
import 'package:flutter/cupertino.dart';

class Smalltext extends StatelessWidget {
  final Color? color;
  final String text;
  double fontsize;
  double space;
  TextAlign? textAlign;

  Smalltext({ Key? key,
    this.color = const Color.fromARGB(255, 0, 0, 0),
    required this.text,
    required this.fontsize,
    required this.space,
    this.textAlign,





  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(color: color, fontSize: fontsize, letterSpacing: space ),

    );
  }
}