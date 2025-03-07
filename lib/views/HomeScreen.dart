import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indiasarkarinaukri/views/Drawer.dart';
import 'package:indiasarkarinaukri/views/UIHelper.dart';

import '../utils/ScreenUtils.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController c = new TextEditingController();

    double screenWidth = ScreenUtils.getScreenWidth(context);
    double screenHeight = ScreenUtils.getScreenHeight(context);
    return Scaffold(
      appBar: AppBar(
        title:   UIHelper.textview("India sarkari Naukri", FontWeight.bold, 20, GoogleFonts.poppins(), Colors.black),

        elevation: 4,
        actions: [
          Row(
            children: [
              Material(
                shape: CircleBorder(),
                elevation: 4,
                child: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors
                              .black54 // Dark background for dark mode
                          : Colors.white, // White background for light mode,
                  child: Icon(
                    Icons.notifications_none,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Material(
                shape: CircleBorder(),
                elevation: 4,
                child: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors
                              .black54 // Dark background for dark mode
                          : Colors.white, // White background for light mode
                  child: Icon(
                    Icons.person_outline,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              SizedBox(width: screenWidth*0.02),
            ],
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: UIHelper.searchView(c),
              ),
        
              Row(children: [
                UIHelper.textview("Trending", FontWeight.bold, 18, GoogleFonts.poppins(), Colors.black),
                Spacer(),
                UIHelper.textview("View All", FontWeight.bold, 18, GoogleFonts.poppins(), Colors.black),
              ],),
        
              SizedBox(height: screenHeight * 0.01,),
        
              UIHelper.slider(),
        
              SizedBox(height: screenHeight * 0.02,),
        
              UIHelper.cardviewwithlist(title: "Latest Jobs",   items: [
                        "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                        "CISF Constable Driver Online Form 2025",
                        "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                        "Railway RRB Group D Online Form 2025",
                        "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                      ], color: Colors.red),
              SizedBox(height: screenHeight * 0.02,),
              UIHelper.cardviewwithlist(title: "Result",   items: [
                        "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                        "CISF Constable Driver Online Form 2025",
                        "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                        "Railway RRB Group D Online Form 2025",
                        "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                      ], color: Colors.green),
              SizedBox(height: screenHeight * 0.02,),
              UIHelper.cardviewwithlist(title: "Admit Card",   items: [
                        "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                        "CISF Constable Driver Online Form 2025",
                        "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                        "Railway RRB Group D Online Form 2025",
                        "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                      ], color: Colors.green),
              SizedBox(height: screenHeight * 0.02,),
              UIHelper.cardviewwithlist(title: "Admission",   items: [
                        "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                        "CISF Constable Driver Online Form 2025",
                        "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                        "Railway RRB Group D Online Form 2025",
                        "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                      ], color: Colors.red),
        
            ],
          ),
        ),
      ),
    );
  }
}
