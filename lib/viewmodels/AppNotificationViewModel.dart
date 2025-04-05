
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:indiasarkarinaukri/modals/AppNotificationModel.dart';

import '../Services/AppNotificationService.dart';

class AppNotificationViewModel extends GetxController{

  var isLoading= true.obs;
  var appNotification=<AppNotificationModel>[].obs;

  final AppNotificationService notificationService=AppNotificationService();

  Future<void>fetchNotification()async{

    try{
      isLoading(true);
       var fetchedNotification=await notificationService.fetchnotification();
       print("foekjfnjioernfijnjuinfijnjikfijnfjifnjfnfnffffffffffff");
       print(fetchedNotification);
       appNotification.assignAll(fetchedNotification);
    }
    catch (e) {
      print("Error fetching posts: $e");
    } finally {
      isLoading(false); // End loading
    }
  }
}