import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.red,
                  ),
                  Text(
                    "Progress",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.add_circle, color: Colors.red)
                ],
              ),
              SizedBox(height: 10,),
              Center(
                child: Icon(
                  Icons.contact_page,
                  size: 54,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Daily Activities",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                child: Row(children: [
                  LinearProgressIndicator(color: Colors.red,),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
