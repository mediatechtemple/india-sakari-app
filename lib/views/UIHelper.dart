import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:indiasarkarinaukri/modals/AdmissionModel.dart';
import 'package:indiasarkarinaukri/modals/AdmissionPageModel.dart';
import 'package:indiasarkarinaukri/modals/AdmitCardModel.dart';
import 'package:indiasarkarinaukri/modals/AdmitCardPageModel.dart';
import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
import 'package:indiasarkarinaukri/modals/AnswerKeyPageModel.dart';
import 'package:indiasarkarinaukri/modals/JobsModel.dart';
import 'package:indiasarkarinaukri/modals/LatestJobs.dart';
import 'package:indiasarkarinaukri/modals/ResultsModel.dart';
>>>>>>> f7af307 (Changes in home screen)
import 'package:indiasarkarinaukri/utils/constants.dart';

import '../modals/AdmitCardPortalModel.dart';
import '../modals/ResultPageModel.dart';
import '../routes/app_routes.dart';
import '../viewmodels/AdmitCardViewModel.dart';

class UIHelper {
  //
  static textview(String text,
      FontWeight fontWeight,
      double size,
      TextStyle fontStyle,
      Color color,) {
    return Text(
      text,
      style: fontStyle.copyWith(
        fontWeight: fontWeight,
        fontSize: size,
        color: color,
      ),
    );
  }
  static cardviewwithlistadmitcard({
    required String title,
    required List<AdmitCardModel> items,
    required Color color,
    required Function() callback,

  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFF0D47A1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            ...items.take(10).map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: Color(0xFF0D47A1)),
                      SizedBox(width: 8),
                      Expanded(
                          child: InkWell(onTap: () {
                            String finalRoute = AppRoutes.admitcardportalPage.replaceFirst(":endpoint", item.slug);
                            print("Navigating to: $finalRoute");  // Debugging route
                            Get.toNamed(finalRoute);
                          },
                              child: Text(item.admitCardUrl, style: TextStyle(
                                  fontSize: 14)))),
                    ],
                  ),
                )),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                onPressed: callback,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF0D47A1)),
                ),
                child: Text(
                  "View More",
                  style: TextStyle(color: Color(0xFF0D47A1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static searchView(TextEditingController search) {
    return TextField(
      controller: search,
      decoration: InputDecoration(
        hintText: 'Search',
        filled: false,
        fillColor: Colors.white,
        suffixIcon: Container(
          //  margin: EdgeInsets.all(4), // for spacing
          decoration: BoxDecoration(
            color: Constant.bgColor, // Icon ka background color
            borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(10)), // Thoda rounded look ke liye
          ),
          child: Icon(Icons.search, color: Colors.white), // White color ka icon
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          // Rounded corners when focused
          borderSide: BorderSide(
              color: Constant.bgColor, width: 2), // Focused border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          // Rounded corners when enabled
          borderSide: BorderSide(
              color: Constant.bgColor, width: 2), // Border color when enabled
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
    );
  }


  static editText(TextEditingController controller, String hint, int? minLine) {
    return TextField(
      controller: controller,
      minLines: minLine,
      decoration: InputDecoration(
        hintText: hint,
        filled: false,
        fillColor: Colors.white,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          // Rounded corners when focused
          borderSide: BorderSide(
              color: Constant.bgColor, width: 2), // Focused border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          // Rounded corners when enabled
          borderSide: BorderSide(
              color: Constant.bgColor, width: 2), // Border color when enabled
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
    );
  }


  static slider() {
    return CarouselSlider(
      options: CarouselOptions(height: 150.0,
          autoPlay: true,

          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.linear,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          //   onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: true
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                margin: EdgeInsets.symmetric(horizontal: 1.0),
                decoration: BoxDecoration(
                    color: Colors.amber
                ),
                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
  }

  static cardviewwithlistjob({
    required String title,
    required List<String> items,
    required Color color,
    required VoidCallback callback,

  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFF0D47A1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            // Display the first 10 job items
            ...items.take(10).map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: Color(0xFF0D47A1)),
                      SizedBox(width: 8),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // Correctly handle navigation
                            String finalRoute = AppRoutes.jobportalPage.replaceFirst(":endpoint", item.slug);
                            print("Navigating to: $finalRoute");  // Debugging route
                            Get.toNamed(finalRoute);
                          },
                          child: Text(item.jobUrl, style: TextStyle(fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                onPressed: callback,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF0D47A1)),
                ),
                child: Text(
                  "View More",
                  style: TextStyle(color: Color(0xFF0D47A1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  static cardviewwithlistanswerkey({
    required String title,
    required List<AnswerKeyModel> items,
    required Color color,
    required Function() callback,

  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFF0D47A1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            ...items.take(10).map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: Color(0xFF0D47A1)),
                      SizedBox(width: 8),
                      Expanded(
                          child: InkWell(onTap: () {
                            print(item.answerKeyUrl.toString());
                          },
                              child: Text(item.answerKeyUrl, style: TextStyle(
                                  fontSize: 14)))),
                    ],
                  ),
                )),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                onPressed:callback,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF0D47A1)),
                ),
                child: Text(
                  "View More",
                  style: TextStyle(color: Color(0xFF0D47A1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static cardviewwithlistresult({
    required String title,
    required List<ResultsModal> items,
    required Color color,
    required Function() callback,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFF0D47A1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            ...items.take(10).map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: Color(0xFF0D47A1)),
                      SizedBox(width: 8),
                      Expanded(
                          child: InkWell(onTap: () {
                            print(item.resultUrl.toString());
                          },
                              child: Text(item.resultUrl, style: TextStyle(
                                  fontSize: 14)))),
                    ],
                  ),
                )),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                onPressed: callback,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF0D47A1)),
                ),
                child: Text(
                  "View More",
                  style: TextStyle(color: Color(0xFF0D47A1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }




  static cardviewwithlistadmission({
    required String title,
    required List<AdmissionModel> items,
    required Color color,
    required VoidCallback callback,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFF0D47A1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            ...items.take(10).map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: Color(0xFF0D47A1)),
                      SizedBox(width: 8),
                      Expanded(
                          child: InkWell(onTap: () {
                            print(item.admissionUrl.toString());
                          },
                              child: Text(item.admissionUrl, style: TextStyle(
                                  fontSize: 14)))),
                    ],
                  ),
                )),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                onPressed: callback,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF0D47A1)),
                ),
                child: Text(
                  "View More",
                  style: TextStyle(color: Color(0xFF0D47A1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static cardviewwithlistfulljoblist({
    required String title,
    required List<JobsModel> items,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            ...items.map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: color),
                      SizedBox(width: 8),
                      Expanded(
<<<<<<< HEAD
                          child: Text(item, style: TextStyle(fontSize: 14))),
=======
                          child: InkWell(onTap: () {
                            print(item.jobUrl.toString());
                          },
                              child: InkWell(
                                  onTap: (){
                                    print("mjioiorewwhfijwewwrfiuwerbiufbweriuf");
                                    Get.toNamed('${AppRoutes.jobportalPage.replaceFirst(":endpoint", item.slug)}');

                                  },
                              child: Text(item.jobUrl, style: TextStyle(
                                  fontSize: 14))))),
>>>>>>> f7af307 (Changes in home screen)
                    ],
                  ),
                )),
            SizedBox(height: 8),
<<<<<<< HEAD
            Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: color),
                ),
                child: Text(
                  "View More",
                  style: TextStyle(color: color),
                ),
=======

          ],
        ),
      ),
    );
  }

  static cardviewwithlistfulladmissionlist({
    required String title,
    required List<AdmissionPageModel> items,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
>>>>>>> f7af307 (Changes in home screen)
              ),
            ),
            SizedBox(height: 8),
            ...items.map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: color),
                      SizedBox(width: 8),
                      Expanded(
                          child: InkWell(onTap: () {
                            print(item.admissionUrl.toString());
                          },
                              child: Text(item.admissionUrl, style: TextStyle(
                                  fontSize: 14)))),
                    ],
                  ),
                )),
            SizedBox(height: 8),

          ],
        ),
      ),
    );
  }

  static cardviewwithlistfullresultlist({
    required String title,
    required List<ResultPageModel> items,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            ...items.map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: color),
                      SizedBox(width: 8),
                      Expanded(
                          child: InkWell(onTap: () {
                            print(item.resultUrl.toString());
                          },
                              child: Text(item.resultUrl, style: TextStyle(
                                  fontSize: 14)))),
                    ],
                  ),
                )),
            SizedBox(height: 8),

          ],
        ),
      ),
    );
  }
  static cardviewwithlistfulladmitcardlist({
    required String title,
    required List<AdmitCardPageModel> items,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            ...items.map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: color),
                      SizedBox(width: 8),
                      Expanded(
                          child: InkWell(onTap: () {
                            print(item.admitCardUrl.toString());
                          },
                              child: Text(item.admitCardUrl, style: TextStyle(
                                  fontSize: 14)))),
                    ],
                  ),
                )),
            SizedBox(height: 8),

          ],
        ),
      ),
    );
  }
  static cardviewwithlistadmitcardfull({
    required String title,
    required List<AdmitCardPortalModel> items,
    required Color color,
    required VoidCallback callback,   // Callback for item click
    required VoidCallback callback2,  // Second callback (if needed)
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            ...items.map((item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Icon(Icons.circle, size: 8, color: color),
                  SizedBox(width: 8),
                  Expanded(
                    child: InkWell(
                      onTap: callback, // Use the callback on item click
                      child: Text(
                        item.admitCardUrl.toString(), // or any other relevant property
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  static cardviewwithlistfullanswerkeylist({
    required String title,
    required List<AnswerKeyPageModel> items,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            ...items.map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: color),
                      SizedBox(width: 8),
                      Expanded(
                          child: InkWell(onTap: () {
                            print(item.answerKeyUrl.toString());
                          },
                              child: Text(item.answerKeyUrl, style: TextStyle(
                                  fontSize: 14)))),
                    ],
                  ),
                )),
            SizedBox(height: 8),

          ],
        ),
      ),
    );
  }

}







