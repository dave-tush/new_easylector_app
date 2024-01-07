import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_easylector_app/Pages/General_page.dart';
import 'package:new_easylector_app/providers.dart';
import 'package:new_easylector_app/video_player.dart';
import 'package:provider/provider.dart';
import 'Pages/nav bar pages/Home_page.dart';
import 'Pages/test_pages.dart';
import 'Sign up and login pages/Sign_up_page.dart';
import 'Sign up and login pages/login_page.dart';
import 'chat.dart';
import 'chatmessage.dart';
import 'controller/message_controller.dart';
import 'foundation/theme_house/theme.dart';

Future<void> main() async {
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MessageController>(
        create: (_) => MessageController(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: themeProvider.themeMode,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:
            // chatting()
            // signup_page()
            // LoginPage()
            // providers()
            // );
            // TestPage(subject: 'mth',)
        VideoPlayers(),

        //     general_page()
    );
  }
}
