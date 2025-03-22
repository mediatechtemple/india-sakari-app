import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indiasarkarinaukri/utils/constants.dart';
import 'package:indiasarkarinaukri/viewmodels/theme_viewmodel.dart';

import '../routes/app_routes.dart';
import 'UIHelper.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeViewModel themeViewModel = Get.find<ThemeViewModel>();

    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Constant.bgColor),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/drawables/indialogo.png',
                    ),
                  ),
                  UIHelper.textview(
                    "India sarkari Naukri",
                    FontWeight.w600,
                    20,
                    GoogleFonts.poppins(),
                    Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => SwitchListTile(
              title: Text('Night Mode'),
              secondary: Icon(Icons.dark_mode),
              value: themeViewModel.isDarkMode.value,
              onChanged: (value) {
                themeViewModel.toggleTheme();
              },
            ),
          ),
          ListTile(leading: Icon(Icons.support), title: Text("Support")),
          ListTile(leading: Icon(Icons.share), title: Text("Share & Earn")),
          ListTile(
            leading: Image.asset('assets/icons/speakerphone.png'),
            title: Text("Advertise With Us"),
            onTap: () {
              Get.toNamed(AppRoutes.advertisementpage);
            },
          ),
          ListTile(
            leading: Icon(Icons.archive_outlined),
            title: Text("Archives"),
          ),
          ListTile(
            leading: Icon(Icons.rate_review_sharp),
            title: Text("Rate US"),
          ),
          ListTile(leading: Icon(Icons.update), title: Text("Update App")),
          ListTile(
            leading: Image.asset('assets/icons/about.png'),
            title: Text("About"),
          ),
        ],
      ),
    );
  }
}
