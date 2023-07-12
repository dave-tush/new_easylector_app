import 'package:flutter/material.dart';

class DownloadedCoursesPage extends StatefulWidget {
  const DownloadedCoursesPage({super.key});

  @override
  State<DownloadedCoursesPage> createState() => _DownloadedCoursesPageState();
}

class _DownloadedCoursesPageState extends State<DownloadedCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 1,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Downloaded Courses",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.search)
              ],
            ),
            Text(
              "Continue offline",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 75,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) => const Card(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "MTH 101",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.play_circle,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("18 Lessons"),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.account_circle,
                                color: Colors.red,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                            ),
                          LinearProgressIndicator(
                            minHeight: 10,
                            color: Colors.red,
                            value: 0.1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
            ),
        ),
      ),
    );
  }
}
