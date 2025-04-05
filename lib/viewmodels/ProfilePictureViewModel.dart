import 'package:get/get.dart';

class ProfilePictureController extends GetxController {
  // Reactive variables for profile data
  var name = "John Doe".obs;
  var category = "Developer".obs;
  var email = "john.doe@example.com".obs;
  var phone = "+1234567890".obs;
  var dob = "01/01/1990".obs;
  var education = "Bachelor's in Computer Science".obs;
  var address = "123 Street, City, Country".obs;
  var profileImageUrl = 'https://www.example.com/profile.jpg'.obs; // Default network URL

  // Gender field added (Reactive)
  var gender = "Not specified".obs;  // Default value is 'Not specified'

  // Message variable
  var message = "Welcome to Profile Picture Page!".obs;

  // Method to update profile image
  void updateProfileImage(String newImageUrl) {
    profileImageUrl.value = newImageUrl; // Update with either a new network URL or a local file path
  }

  // Method to update name
  void updateName(String newName) {
    name.value = newName;
  }


  // Method to update email
  void updateEmail(String newEmail) {
    email.value = newEmail;
  }

  // Method to update phone number
  void updatePhone(String newPhone) {
    phone.value = newPhone;
  }

  // Method to update Date of Birth
  void updateDob(String newDob) {
    dob.value = newDob;
  }

  // Method to update education
  void updateEducation(String newEducation) {
    education.value = newEducation;
  }

  // Method to update address
  void updateAddress(String newAddress) {
    address.value = newAddress;
  }

  // Method to update the message
  void updateMessage(String newMessage) {
    message.value = newMessage;
  }

  // Method to update gender
  void updateGender(String newGender) {
    gender.value = newGender;
  }
}
