import 'package:flutter/material.dart';

import '../color_house/colors.dart';
import 'Small_text.dart';


class Expandabletext extends StatefulWidget {

 final String Text ;


  const Expandabletext({ Key? key, required this.Text }) : super(key: key);
 

  @override
  State<Expandabletext> createState() => _ExpandabletextState();
}

class _ExpandabletextState extends State<Expandabletext> {
  var sizes, width, height;


  late String firsthalf;
  late String secondhalf;
  
  bool hideText = true;

  double textheight = 200;
 // double size = 12;


  @override
  void initState(){
    super.initState();
    if (widget.Text.length>textheight) {
      firsthalf = widget.Text.substring(0, textheight.toInt());
      secondhalf = widget.Text.substring(textheight.toInt()+1, widget.Text.length);
      
    }
    else{
      firsthalf = widget.Text;
      secondhalf = "";
    }
  }



  


  @override
  Widget build(BuildContext context) {
  sizes = MediaQuery.of(context).size;
  height = sizes.height;
  width = sizes.width;
   
    return Container(
      padding: EdgeInsets.only(left: width/20.55, right: width/20.55),
      child: secondhalf.isEmpty?Smalltext( text: firsthalf, space: 0,fontsize: 13, color: Theme.of(context).hintColor,):Column(
        children: [
          Smalltext(text: hideText?(firsthalf+"...") : (firsthalf+secondhalf), fontsize: 13, space: 0,color: Theme.of(context).hintColor,),
          InkWell( 
            onTap: (){
              setState(() {
                hideText = !hideText;
              });

          },
          child: Row(
            children: [
               Smalltext(text: hideText?"Show more":"Close", color: MyColors.maincolor, space: 0,fontsize: 13,),
               Icon(hideText?Icons.arrow_drop_down:Icons.arrow_drop_up, color:MyColors.maincolor,),
            ],
          )
          ,
          
    
          
         )
        ],
      ),
      
    );
  }
}