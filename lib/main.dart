import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Intro page/Intro_page.dart';
import 'foundation/theme house/theme.dart';
import 'intro page/just.dart';



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
       home: Intro(),
      );
    },
  );
}



