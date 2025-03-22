import 'package:get/get.dart';

class AdvertiseWithUsController extends GetxController {
  var message = "Welcome to Advertise with Us!".obs;

  void updateMessage(String newMessage) {
    message.value = newMessage;
  }
}
