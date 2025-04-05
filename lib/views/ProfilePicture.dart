import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/ProfilePictureViewModel.dart';
import 'package:image_picker/image_picker.dart'; // For picking image

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profileController = Get.put(ProfilePictureController());
    final _picker = ImagePicker();

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Profile Picture Section
            Center(
              child: Stack(
                children: [
                  Obx(() {
                    return CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(profileController.profileImageUrl.value),
                      backgroundColor: Colors.grey[200],
                    );
                  }),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.camera_alt, color: Colors.blue, size: 30),
                      onPressed: () async {
                        // Show bottom sheet for image source selection (Gallery or Camera)
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => BottomSheet(
                            onClosing: () {},
                            builder: (context) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.camera),
                                    title: Text('Take a Picture'),
                                    onTap: () async {
                                      final pickedFile = await _picker.pickImage(
                                        source: ImageSource.camera,
                                      );
                                      if (pickedFile != null) {
                                        profileController.updateProfileImage(pickedFile.path); // Update profile image path
                                      }
                                      Get.back(); // Close bottom sheet
                                    },
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.image),
                                    title: Text('Pick from Gallery'),
                                    onTap: () async {
                                      final pickedFile = await _picker.pickImage(
                                        source: ImageSource.gallery,
                                      );
                                      if (pickedFile != null) {
                                        profileController.updateProfileImage(pickedFile.path); // Update profile image path
                                      }
                                      Get.back(); // Close bottom sheet
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Editable Name Field
            _buildEditableTile(
              icon: Icons.person,
              title: 'Name',
              controller: profileController.name,
              onTap: () {
                _showEditDialog(context, 'Name', profileController.name);
              },
            ),

            // Editable Gender Field
            _buildEditableTile(
              icon: Icons.transgender,
              title: 'Gender',
              controller: profileController.gender,
              onTap: () {
                _showGenderDialog(context, profileController.gender);
              },
            ),



            // Editable Email Field
            _buildEditableTile(
              icon: Icons.email,
              title: 'Email',
              controller: profileController.email,
              onTap: () {
                _showEditDialog(context, 'Email', profileController.email);
              },
            ),

            // Editable Phone Number Field
            _buildEditableTile(
              icon: Icons.phone,
              title: 'Phone Number',
              controller: profileController.phone,
              onTap: () {
                _showEditDialog(context, 'Phone Number', profileController.phone);
              },
            ),

            // Editable Date of Birth Field
            _buildEditableTile(
              icon: Icons.calendar_today,
              title: 'Date of Birth',
              controller: profileController.dob,
              onTap: () {
                _showEditDialog(context, 'Date of Birth', profileController.dob);
              },
            ),

            // Editable Education Field
            _buildEditableTile(
              icon: Icons.school,
              title: 'Education',
              controller: profileController.education,
              onTap: () {
                _showEditDialog(context, 'Education', profileController.education);
              },
            ),

            // Editable Address Field
            _buildEditableTile(
              icon: Icons.location_on,
              title: 'Address',
              controller: profileController.address,
              onTap: () {
                _showEditDialog(context, 'Address', profileController.address);
              },
            ),

            SizedBox(height: 20),

            // Manage Profile Button
            ElevatedButton(
              onPressed: () {
                // Add functionality for managing profile
              },
              child: Text('Manage Profile'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Plan Management Button
            ElevatedButton(
              onPressed: () {
                // Add functionality for plan management
              },
              child: Text('Plan Management'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Log Out Button
            ElevatedButton(
              onPressed: () {
                // Add logout functionality
              },
              child: Text('Log Out'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build editable list tiles
  Widget _buildEditableTile({
    required IconData icon,
    required String title,
    required RxString controller,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Obx(() => Text(controller.value)),
      onTap: onTap,
    );
  }

  // Function to show the edit dialog
  void _showEditDialog(BuildContext context, String fieldName, RxString controller) {
    final TextEditingController textController = TextEditingController(text: controller.value);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit $fieldName'),
          content: TextField(
            controller: textController,
            decoration: InputDecoration(labelText: 'Enter new $fieldName'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                controller.value = textController.text;
                Get.back();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  // Function to show the gender selection dialog
  void _showGenderDialog(BuildContext context, RxString controller) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Gender'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Male'),
                onTap: () {
                  controller.value = 'Male';
                  Get.back();
                },
              ),
              ListTile(
                title: Text('Female'),
                onTap: () {
                  controller.value = 'Female';
                  Get.back();
                },
              ),
              ListTile(
                title: Text('Other'),
                onTap: () {
                  controller.value = 'Other';
                  Get.back();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
