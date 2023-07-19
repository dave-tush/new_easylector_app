import 'package:flutter/material.dart';

class DownloadedCoursesPage extends StatefulWidget {
  const DownloadedCoursesPage({super.key});

  @override
  State<DownloadedCoursesPage> createState() => _DownloadedCoursesPageState();
}

class _DownloadedCoursesPageState extends State<DownloadedCoursesPage> {
  @override
  Widget build(BuildContext context) {
    List<String> subjects = [
      "MTH 101",
      "PHY 101",
      "CHM 101",
      "BIO 101",
      "GNS 101",
      "LIB 101",
    ];
    List <int> numberOfLessons = [
      10,
      20,
      30,
      40,
      18,
      5,
    ];
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
                height: MediaQuery.of(context).size.height - 50,
                child: ListView.builder(
                  itemCount: subjects.length,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    subjects[index],
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
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
                                      Text("${numberOfLessons[index]} Lessons"),
                                    ],
                                  ),
                                ],
                              ),
                              for (int i = 0; i < circleImages.length; i++)
                                Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    radius: 10,
                                    child: CircleAvatar(
                                      radius: 9,
                                      backgroundImage:
                                          AssetImage(circleImages[i].toString()),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const LinearProgressIndicator(
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

  List circleImages = [
    "assets/images/book-g3ee54beb5_1920 1.png",
    "assets/images/book-g3ee54beb5_1920 1.png",
    "assets/images/book-g3ee54beb5_1920 1.png",
    "assets/images/book-g3ee54beb5_1920 1.png"
  ];
}
