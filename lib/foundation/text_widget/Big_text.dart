import 'package:flutter/cupertino.dart';

class Bigtext extends StatelessWidget {
  double space;
  final Color? color;
  double fontsize;

  final String text;
  TextOverflow overflow;
  final FontWeight? weight;
  TextAlign? textAlign;

  // color: Theme.of(context).accentColor

  Bigtext({
    Key? key,
    this.color = const Color.fromARGB(255, 30, 30, 30),
    this.weight = FontWeight.bold,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    required this.space,
    this.textAlign,
    required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size50 = SizedBox.fromSize();
    return Text(
      text,
      overflow: overflow,
      textAlign: textAlign,
      //style: TextStyle(color: color, fontWeight: weight, fontSize: Dimension.big_text_size25, letterSpacing: space, ),
      style: TextStyle(
        color: color,
        fontWeight: weight,
        letterSpacing: space,
        fontSize: fontsize,
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';

// class Bigtext extends StatelessWidget {

//   final Color? color;    // using ? in this make us change the color if we dont want to use the default.
//   final String text;
//   double size;
//   TextOverflow overflow;

//    Bigtext({ Key? key, this.color,
//    required this.text,
//    this.overflow=TextOverflow.ellipsis,
//    this.size=20       // when this size the default size will be 20.

//     }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       overflow: overflow,
//       style: TextStyle(color: color, fontWeight: FontWeight.w400,),
//     );
//   }
// }
