import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/BooksViewModel.dart';
import '../viewmodels/LibraryPageViewModel.dart';
import '../viewmodels/NotesViewModel.dart';
import '../viewmodels/OldPaperViewModel.dart';
import '../viewmodels/VideosViewModel.dart';
import 'BooksPage.dart';
import 'CustomBottomNavBar.dart';
import 'NotesPage.dart';
import 'OldPaper.dart';
import 'VideosPage.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LibraryPageViewModel controller = Get.put(LibraryPageViewModel());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.toNamed('/home'); // Using GetX navigation
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/2487/60a8/b097b477bc4b64cd22dba19059d8cc23?Expires=1744588800&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=H0-G78eq5P~5GgbMllNkP4BnxAOjl~~CPqRONb5mUfdgVNx51dSxXU76Y4zE2siZFtkht1fbPTxJReA-VdzD9~DqO4m9njnHZtdIez0DKZbB8q7No5FJGLhVK2tM~UpH3HTuDR8Co5zh4xxQkt4sJS12qtqdLc-y7C85~6Tu7Mh5T2DqWndbxy07VW7Ik6Gg~eM4lsq5mGO8NWl7QabuRSIix6j2HqcTtsJMxUF1lK4rKrBgH794TTSXcJT~OfbLbs8aLjx6TBAzkA-Mdg5jZCJY6itYPnsSlBFTQE2PSXdXtmqnR~MTUgRwj7HJmsyP6bez2uPvYB-6bZBK7UmJGw__',
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Welcome',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search for Courses or Products',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                onChanged: (query) {
                  // Implement search filter logic
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find Courses by Exams',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      // Action for 'View All' button
                    },
                    child: Text('View All'),
                  ),
                ],
              ),
              // First row of Courses
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CourseCard(courseName: 'SSC', imageUrl: 'https://s3-alpha-sig.figma.com/img/502b/f6a3/0543133ee9b0dfd7a940bcd12de3f351?Expires=1744588800&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=a-pkSpB9v9xDjF5RQH4mlETlJqP9G2D0M~35N7w0fw19gx8gpPNRoyDpJMbQaWQqeZY090c9ZoFkLzYk72BciSLiurk2tJ~LIsPrT7mbykc3zVogHF8CXCub6~SnhEUxe51~ar7TCWdtO1bUxhcgb9SfKnI3rTX5NjkSqm-9ejjMENkoQjLcYtzWwaDNRgxT3c~-NuYy9azc0~kaVn8-vemI2aqOs0Pg8UaDNlncypZg5ctLJblq5DtZx9czOief0LcP-UxpyMcSboPPeu~KuTA35CyHDlt2k8wgcBR2-wjsd0SSof-h8hqgIo883ozdfGrx3LTMZbcmdbRTMpoijg__'),
                  CourseCard(courseName: 'Railway', imageUrl: 'https://s3-alpha-sig.figma.com/img/268d/d1c7/4ed46dfd09adea28961ca50b4c628599?Expires=1744588800&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=SFjTNzz3YUSH4JwIUSpqyqy6O3Ex9jTF9bjz6QRbVMr-YlKywlS~lDtkSp3gn1FwyQioKWljgT7bki8AF-Zmk7hjJaZVSJVPhrc1DPFhXUec30OMQlIUbVo29x5eA~ks1Qz1Xzzi41rEYy~TjCzxuMcGZcUhXZxfBkEZ~Ktpd5rtcimpBppIzRKyEBgM-wdEyWX6Zu6NnN3NWHodnsASlVsHF-GzUWTgp9OOh-~GMVuxtCIidIfN0D0PbJBBMcm9LMwZc5twowe0wEXBGpR25jac4Ol64U~e8V-r~3x1MmI16wQLwnPU6RhYrdi1cwxkLgoBO9RJU-7OAtr5XiJA6A__'),
                  CourseCard(courseName: 'SSC GD', imageUrl: 'https://s3-alpha-sig.figma.com/img/502b/f6a3/0543133ee9b0dfd7a940bcd12de3f351?Expires=1744588800&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=a-pkSpB9v9xDjF5RQH4mlETlJqP9G2D0M~35N7w0fw19gx8gpPNRoyDpJMbQaWQqeZY090c9ZoFkLzYk72BciSLiurk2tJ~LIsPrT7mbykc3zVogHF8CXCub6~SnhEUxe51~ar7TCWdtO1bUxhcgb9SfKnI3rTX5NjkSqm-9ejjMENkoQjLcYtzWwaDNRgxT3c~-NuYy9azc0~kaVn8-vemI2aqOs0Pg8UaDNlncypZg5ctLJblq5DtZx9czOief0LcP-UxpyMcSboPPeu~KuTA35CyHDlt2k8wgcBR2-wjsd0SSof-h8hqgIo883ozdfGrx3LTMZbcmdbRTMpoijg__'),
                  CourseCard(courseName: 'CBSE', imageUrl: 'https://s3-alpha-sig.figma.com/img/901f/bc97/1d734da3004e182c14e7f515724d3218?Expires=1744588800&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MhTir5xxRpiG2kc7S31zii-CWt2BVfUpytCQsBAKKozTMzoZ70InTBFonKKUH2QHhnui-YvrAJygrZMVHxacj0J-g~~QBkKgSjpmER47TDC-Yk~ZsDrg2Xs-kYI6V26ilQb58h5HN0XBe3e7zCozwgBPcTDrveIii5y83s8xM7nMiEOqq5gWVlZ2USECosBHCiE2Uf9DgUgvoIU~hVXIQGA~ZQSnIvuHtrVFmtmnl3v~60PtlUR6xOA6ziwLlZDnKTeeGa74PJT6Brrv-Jm2TymgrOCcvyTUEW1vVkv6nTavQ1jDbkFukydBd13NPcrqfSwiYSZFIhMGop69Sb6XwQ__'),

                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find Courses by Product Type',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // First row with Notes and Old Paper
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.put(OldPaperViewModel());
                      Get.to(() => OldPaperPage());
                    },
                    child: ProductCard(
                      productName: 'Old Paper',
                      icon: Icons.archive,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.put(NotesViewModel());
                      Get.to(() => NotesPage());
                    },
                    child: ProductCard(
                      productName: 'Notes',
                      icon: Icons.notes,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Second row with Books and Videos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.put(BooksViewModel());
                      Get.to(() => BooksPage());
                    },
                    child: ProductCard(
                      productName: 'Books',
                      icon: Icons.book,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.put(VideosViewModel());
                      Get.to(() => VideosPage());
                    },
                    child: ProductCard(
                      productName: 'Videos',
                      icon: Icons.video_library,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

// Course Card Widget
class CourseCard extends StatelessWidget {
  final String courseName;
  final String? imageUrl;

  const CourseCard({required this.courseName, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 48) / 4,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageUrl != null
              ? SizedBox(
            height: 50,
            width: 50,
            child: Image.network(
              imageUrl!,
              fit: BoxFit.cover,
            ),
          )
              : Container(),
          SizedBox(height: 10),
          Text(
            courseName,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// Product Card Widget
class ProductCard extends StatelessWidget {
  final String productName;
  final IconData icon;

  const ProductCard({required this.productName, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 48) / 2,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          SizedBox(height: 10),
          Text(
            productName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
