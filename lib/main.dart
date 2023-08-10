import 'package:flutter/material.dart';
import 'package:new_easylector_app/pages/bar_graph.dart';
import 'package:new_easylector_app/pages/detail_page.dart';
import 'package:new_easylector_app/pages/downloaded_courses_page.dart';
import 'package:new_easylector_app/pages/edit_page.dart';
import 'package:new_easylector_app/pages/progress_page.dart';
import 'package:new_easylector_app/pages/settings_page.dart';
import 'package:new_easylector_app/pages/test_pages.dart';
import 'package:new_easylector_app/pages/video_audio_page.dart';
import 'package:new_easylector_app/widgets/timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<double> weeklySummery = [
      10.32,
      4.56,
      3.54,
      20.56,
      2.11,
      9.80,
      8.22,
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
         home:
      // BarGraph(
        //   weeklySummery: weeklySummery,
        // )
        //VideoAndAudioPage()
        //DownloadedCoursesPage()
        // EditPage()
        //SettingsPage(),
        // CountdownTimerDemo()
        TestPage(),
        // DetailsPage(),
        );
  }
}
