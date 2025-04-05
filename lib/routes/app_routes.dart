import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:indiasarkarinaukri/views/Jobs.dart';
import 'package:indiasarkarinaukri/views/Library.dart';
import 'package:indiasarkarinaukri/views/ProfilePicture.dart';

import '../bindings/AdmitCardPortalBinding.dart';
import '../bindings/JobPortalBinding.dart';
import '../views/Admission.dart';
import '../views/AdmitCard.dart';
import '../views/AdmitCardPortal.dart';
import '../views/AnsweKey.dart';
import '../views/Appbar.dart';
import '../views/BooksPage.dart';
import '../views/JobsPortal.dart';
import '../views/NotesPage.dart';
import '../views/OldPaper.dart';
import '../views/PrivacyPolicy.dart';
import '../views/Result.dart';
import '../views/VideosPage.dart';
import '../views/advertise_with_us.dart';
import '../views/HomeScreen.dart';
<<<<<<< HEAD
import '../views/library.dart';
import '../views/mocktest.dart';
=======
import '../views/notification.dart';
import '/views/mocktest.dart';
>>>>>>> f7af307 (Changes in home screen)

class AppRoutes {
  static const String home = '/';
  static const String mockTest = '/mock_test';
  static const String notification = '/notification';
  static const String advertisementpage = '/advertisementwithus';
<<<<<<< HEAD
  static const String librarypage = '/library';


  static List<GetPage> routes = [
    GetPage(name: home, page: () => const Homescreen()),
    GetPage(name: mockTest, page: () => MockTestPage()),
    GetPage(name: notification, page: () => NotificationPage()),
    GetPage(name: advertisementpage, page: () => AdvertiseWithUsPage()),
    GetPage(name: librarypage, page: () => LibraryPage()),
=======
  static const String jobsPage = '/jobsPage';
  static const String admissionPage = '/admissionPage';
  static const String resultPage = '/resultPage';
  static const String admitcardPage = '/admitcardPage';
  static const String answerkeyPage = '/answerkeyPage';
  static const String jobportalPage = '/jobportalPage/:endpoint'; // Expect a string parameter
  static const String admitcardportalPage = '/admitcardportalPage/:endpoint'; // Expect a string parameter
  static const String libraryPage = '/libraryPage'; // Updated to lowerCamelCase
  static const String booksPage = '/booksPage';     // Updated to lowerCamelCase
  static const String oldpaperPage = '/oldpaperPage';     // Updated to lowerCamelCase
  static const String notesPage = '/notesPage';     // Updated to lowerCamelCase
  static const String videosPage = '/videosPage';     // Updated to lowerCamelCase
  static const String appbarPage = '/appbarPage';
  static const String profilepicturePage = '/profilepicturepage';
  static const String privacypolicyPage = '/privacypolicypage';
  // Updated to lowerCamelCase

  static List<GetPage> routes = [
    GetPage(name: home, page: () => Homescreen()),
    GetPage(name: mockTest, page: () => MockTestPage()),
    GetPage(name: notification, page: () => NotificationPage()),
    GetPage(name: advertisementpage, page: () => AdvertiseWithUsPage()),
    GetPage(name: jobsPage, page: () => JobsPage()),
    GetPage(name: admissionPage, page: () => AdmissionPage()),
    GetPage(name: resultPage, page: () => ResultPage()),
    GetPage(name: admitcardPage, page: () => AdmitCardPage()),
    GetPage(name: booksPage, page: () => BooksPage()), // Correct usage
    GetPage(name: oldpaperPage, page: () => OldPaperPage()), // Correct usage
    GetPage(name: libraryPage, page: () => LibraryPage()), // Correct usage
    GetPage(name: notesPage, page: () => NotesPage()), // Correct usage
    GetPage(name: videosPage, page: () => VideosPage()), // Correct usage
    GetPage(name: appbarPage, page: () => CustomAppBar()), // Correct usage
    GetPage(name: profilepicturePage, page: () => ProfilePage()), // Correct usage
    GetPage(name: privacypolicyPage, page: () => PrivacyPolicyPage()), // Correct usage
    GetPage(name: answerkeyPage, page: () => AnswerKeyPage()),
    GetPage(name: jobportalPage, page: () => JobsPortalPage(), binding: JobPortalBinding()),
    GetPage(name: admitcardportalPage, page: () => AdmitCardPortalPage(), binding: AdmitCardPortalBinding()),
>>>>>>> f7af307 (Changes in home screen)
  ];
}
