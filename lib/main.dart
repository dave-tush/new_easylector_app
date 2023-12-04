import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_easylector_app/intro%20page/Introduction_slide_page.dart';
import 'package:provider/provider.dart';
import 'foundation/theme house/theme.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: const Scaffold(
              body: First_Intro_page(),
            ),
          );
        },
      );
}


