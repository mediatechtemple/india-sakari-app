import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indiasarkarinaukri/views/Drawer.dart';
import 'package:indiasarkarinaukri/views/UIHelper.dart';

import '../utils/ScreenUtils.dart';
import '../utils/notification_page.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // Default selected index for BottomNavigationBar
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController c = new TextEditingController();

    double screenWidth = ScreenUtils.getScreenWidth(context);
    double screenHeight = ScreenUtils.getScreenHeight(context);

    return Scaffold(
      appBar: AppBar(
        title: UIHelper.textview(
          "India Sarkari Naukri",
          FontWeight.bold,
          20,
          GoogleFonts.poppins(),
          Colors.black,
        ),
        elevation: 4,
        actions: [
          Row(
            children: [
              // Notification Icon: Navigate to Notification Page
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationPage(), // Navigate to Notification Page
                    ),
                  );
                },
                child: Material(
                  shape: CircleBorder(),
                  elevation: 4,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).brightness == Brightness.dark
                        ? Colors.black54
                        : Colors.white,
                    child: Icon(
                      Icons.notifications_none,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Material(
                shape: CircleBorder(),
                elevation: 4,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).brightness == Brightness.dark
                      ? Colors.black54
                      : Colors.white,
                  child: Icon(
                    Icons.person_outline,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              SizedBox(width: screenWidth * 0.02),
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
              Row(
                children: [
                  UIHelper.textview("Trending", FontWeight.bold, 18, GoogleFonts.poppins(), Colors.black),
                  Spacer(),
                  UIHelper.textview("View All", FontWeight.bold, 18, GoogleFonts.poppins(), Colors.black),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              UIHelper.slider(),
              SizedBox(height: screenHeight * 0.02),
              UIHelper.cardviewwithlist(
                title: "Latest Jobs",
                items: [
                  "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                  "CISF Constable Driver Online Form 2025",
                  "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                  "Railway RRB Group D Online Form 2025",
                  "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                ],
                color: Colors.red,
              ),
              SizedBox(height: screenHeight * 0.02),
              UIHelper.cardviewwithlist(
                title: "Result",
                items: [
                  "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                  "CISF Constable Driver Online Form 2025",
                  "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                  "Railway RRB Group D Online Form 2025",
                  "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                ],
                color: Colors.green,
              ),
              SizedBox(height: screenHeight * 0.02),
              UIHelper.cardviewwithlist(
                title: "Admit Card",
                items: [
                  "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                  "CISF Constable Driver Online Form 2025",
                  "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                  "Railway RRB Group D Online Form 2025",
                  "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                ],
                color: Colors.green,
              ),
              SizedBox(height: screenHeight * 0.02),
              UIHelper.cardviewwithlist(
                title: "Admission",
                items: [
                  "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                  "CISF Constable Driver Online Form 2025",
                  "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                  "Railway RRB Group D Online Form 2025",
                  "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                ],
                color: Colors.red,
              ),
              SizedBox(height: screenHeight * 0.02),

              // Advertisement With Us Section
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.blue, // Adjust the color as needed
                  child: Center(
                    child: UIHelper.textview(
                      "Advertisement With Us",
                      FontWeight.bold,
                      18,
                      GoogleFonts.poppins(),
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Bottom Navigation Bar with black icons
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black, // Selected item color black
        unselectedItemColor: Colors.black, // Unselected item color black
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_rounded),
            label: 'MockTest',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
