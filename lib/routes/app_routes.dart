import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/advertise_with_us.dart';
import '../utils/notification_page.dart';
import '../views/HomeScreen.dart';
import '../views/mocktest.dart';

class AppRoutes {
  static const String home = '/';
  static const String mockTest = '/mock_test';
  static const String notification = '/notification';
  static const String advertisementpage = '/advertisementwithus';


  static List<GetPage> routes = [
    GetPage(name: home, page: () =>  Homescreen()),
    GetPage(name: mockTest, page: () => MockTestPage()),
    GetPage(name: notification, page: () => NotificationPage()),
    GetPage(name: advertisementpage, page: () => AdvertiseWithUsPage()),
  ];
}