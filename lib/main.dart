import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indiasarkarinaukri/themes/dark_theme.dart';
import 'package:indiasarkarinaukri/themes/light_theme.dart';
import 'package:indiasarkarinaukri/views/HomeScreen.dart';

import 'viewmodels/theme_viewmodel.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeViewModel themeViewModel = Get.put(ThemeViewModel());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(()=>GetMaterialApp(
      title: 'Flutter Demo',
      theme: themeViewModel.isDarkMode.value ? darkTheme : lightTheme,
      home: Homescreen(),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

    );
  }
}