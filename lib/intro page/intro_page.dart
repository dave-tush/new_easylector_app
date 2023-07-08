import 'package:flutter/material.dart';



class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  PageController controller = PageController();

  final messages = [ "Third Screen", "Second Screen", "Third Screen"];

  final List<Widget> queen = [

  //   RichText(
  //   text: TextSpan(
  //     text: 'Welcome to EasyLector',
  //     style: TextStyle(color: Colors.red, fontSize: 13),
  //     children: const <TextSpan>[
  //       TextSpan(text: 'This is an Online learning app to help lautech student gain access to large resources', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
  //       TextSpan(text: ' world!'),
  //     ],
  //   ),
  // ),
  //
  //   RichText(
  //     text: TextSpan(
  //       text: 'Hello ',
  //     //  style: DefaultTextStyle.of(context).style,
  //       children: const <TextSpan>[
  //         TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
  //         TextSpan(text: ' world!'),
  //       ],
  //     ),
  //   ),
  //
  //
  //   RichText(
  //     text: TextSpan(
  //       text: 'Hello ',
  //      // style: DefaultTextStyle.of(context).style,
  //       children: const <TextSpan>[
  //         TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
  //         TextSpan(text: ' world!'),
  //       ],
  //     ),
  //   ),

    Text.rich(
  TextSpan(
  text: "Log in with",
  children: [
  TextSpan(
  text: " phone number with me boysssjj",
  style: TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.blue
  )
  )
  ],
  style: const TextStyle(fontSize: 12.0)
  )
  ),




  ];


  final images = [
    'assets/images/slider/intro2.png',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg'
  ];

  int pageNumber = 4;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemBuilder: (BuildContext context, int index){
            return MessagePage(message: queen[index], image: images[index]);
          }

      ),
    );
  }
}






 class MessagePage extends StatelessWidget {
   const MessagePage({super.key, required this.message, required this.image});

   final Widget message;
   final String image;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         color: Colors.amber,
         child: Center(
           child: Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               Image.asset(image,
                 fit: BoxFit.contain,
                 width: 200,
                 height: 200,),
               message
               
             ],
           ),
         ),
       ),
     );
   }
 }




class Boss extends StatefulWidget {
  const Boss({super.key});

  @override
  State<Boss> createState() => _BossState();
}

class _BossState extends State<Boss> {
  @override
  Widget build(BuildContext context) {
    return Text("Welcome ebery body");
  }
}






