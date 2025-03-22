import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:indiasarkarinaukri/themes/dark_theme.dart';
import 'package:indiasarkarinaukri/themes/light_theme.dart';
import 'package:indiasarkarinaukri/utils/notification_page.dart';
import 'package:indiasarkarinaukri/viewmodels/theme_viewmodel.dart';
import 'package:indiasarkarinaukri/views/HomeScreen.dart';
import 'package:indiasarkarinaukri/views/mocktest.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();  // Initialize Firebase

  // Enable Crashlytics collection
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  // FirebaseCrashlytics.instance.crash();

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('Message clicked!');
    // Handle the notification click (e.g., navigate to a specific screen)
  });
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeViewModel themeViewModel = Get.put(ThemeViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        title: 'Flutter Demo',
        theme: themeViewModel.isDarkMode.value ? darkTheme : lightTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const Homescreen(),
          //'/mock_test': (context) => MockTestPage(),
          '/notification': (context) => NotificationPage(),
        },
      );
    });
  }
}



// Home Page (Main Screen)
class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Added key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
