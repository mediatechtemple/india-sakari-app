import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:indiasarkarinaukri/modals/Jobs.dart';
import 'package:indiasarkarinaukri/utils/constants.dart';

class UIHelper {
  //
  static textview(
    String text,
    FontWeight fontWeight,
    double size,
    TextStyle fontStyle,
    Color color,
  ) {
    return Text(
      text,
      style: fontStyle.copyWith(
        fontWeight: fontWeight,
        fontSize: size,
        color: color,
      ),
    );
  }

  static searchView(TextEditingController search){
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
            borderRadius: BorderRadius.only(topLeft: Radius.circular(0),topRight: Radius.circular(10),bottomLeft: Radius.circular(0),bottomRight: Radius.circular(10)), // Thoda rounded look ke liye
          ),
          child: Icon(Icons.search, color: Colors.white), // White color ka icon
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),  // Rounded corners
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),  // Rounded corners when focused
          borderSide: BorderSide(color: Constant.bgColor, width: 2), // Focused border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),  // Rounded corners when enabled
          borderSide: BorderSide(color: Constant.bgColor, width: 2), // Border color when enabled
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
    );

  }


  static editText(TextEditingController controller,String hint,int? minLine){
    return TextField(
      controller: controller,
      minLines: minLine,
      decoration: InputDecoration(
        hintText: hint,
        filled: false,
        fillColor: Colors.white,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),  // Rounded corners
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),  // Rounded corners when focused
          borderSide: BorderSide(color: Constant.bgColor, width: 2), // Focused border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),  // Rounded corners when enabled
          borderSide: BorderSide(color: Constant.bgColor, width: 2), // Border color when enabled
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
    );

  }


  static slider(){
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
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
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

  static cardviewwithlist({
    required String title,
    required List<Jobs> items,
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
            ...items.take(10).map((item) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: color),
                      SizedBox(width: 8),
                      Expanded(
                          child: InkWell(onTap: (){print(item.jobUrl.toString());},
                              child: Text(item.jobUrl, style: TextStyle(fontSize: 14)))),
                    ],
                  ),
                )),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                onPressed: () {

                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: color),
                ),
                child: Text(
                  "View More",
                  style: TextStyle(color: color),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}



