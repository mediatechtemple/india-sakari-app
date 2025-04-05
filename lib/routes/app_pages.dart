import 'package:get/get.dart';
import 'package:indiasarkarinaukri/bindings/ProfilePictureBinding.dart';
import 'package:indiasarkarinaukri/views/Jobs.dart';
import 'package:indiasarkarinaukri/views/JobsPortal.dart';
import 'package:indiasarkarinaukri/views/ProfilePicture.dart';

<<<<<<< HEAD
import '../bindings/advertise_with_us_binding.dart';
import '../views/advertise_with_us.dart';
=======
import '../bindings/AdmitCardPortalBinding.dart';
import '../bindings/AppNotificationBinding.dart';
import '../bindings/AppbarBinding.dart';
import '../bindings/BooksPageBinding.dart';
import '../bindings/JobPortalBinding.dart';
import '../bindings/LatestJobBinding.dart';
import '../bindings/LibraryPage.Binding.dart';
import '../bindings/NotesBinding.dart';
import '../bindings/OldPaperBinding.dart';
import '../bindings/PrivacyPolicyBinding.dart';
import '../bindings/ResultsPageBinding.dart';
import '../bindings/VideosBinding.dart';
import '../bindings/advertise_with_us_binding.dart';

import '../views/Admission.dart';
import '../views/AdmitCard.dart';
import '../views/AdmitCardPortal.dart';
import '../views/AnsweKey.dart';
import '../views/Appbar.dart';
import '../views/BooksPage.dart';
import '../views/HomeScreen.dart';
import '../views/Library.dart';
import '../views/NotesPage.dart';
import '../views/OldPaper.dart';
import '../views/PrivacyPolicy.dart';
import '../views/Result.dart';
import '../views/VideosPage.dart';
import '../views/advertise_with_us.dart';
import '../views/notification.dart';
import 'app_routes.dart';
>>>>>>> f7af307 (Changes in home screen)

class AppPages {
  static final routes = [
    GetPage(
      name: '/advertiseWithUsPage',
      page: () => AdvertiseWithUsPage(),
      binding: AdvertiseWithUsBinding(),
    ),
<<<<<<< HEAD
    // GetPage(
    //   name: '/home',
    //   page: () => HomePage(),
    //   binding: HomeBinding(),
    // ),
=======

    GetPage(
      name: AppRoutes.home, // Use route names from AppRoutes
      page: () => Homescreen(),
      binding: LatestJobBinding(),  // Binding for dependencies
    ),
    GetPage(
      name: AppRoutes.notification, // Use route names from AppRoutes
      page: () => NotificationPage(),
      binding: AppNotificationBinding(),  // Binding for dependencies
    ),
 GetPage(
      name: AppRoutes.jobsPage, // Use route names from AppRoutes
      page: () => JobsPage(),
      binding: LatestJobBinding(),  // Binding for dependencies
    ),
    GetPage(
      name: AppRoutes.admissionPage, // Use route names from AppRoutes
      page: () => AdmissionPage(),
      binding: LatestJobBinding(),  // Binding for dependencies
    ),
    GetPage(
      name: AppRoutes.resultPage, // Use route names from AppRoutes
      page: () => ResultPage(),
      binding: ResultsPageBinding(),  // Binding for dependencies
    ),
    GetPage(
      name: AppRoutes.admitcardPage, // Use route names from AppRoutes
      page: () => AdmitCardPage(),
      binding: LatestJobBinding(),  // Binding for dependencies
    ),
    GetPage(
      name: AppRoutes.answerkeyPage, // Use route names from AppRoutes
      page: () => AnswerKeyPage(),
      binding: LatestJobBinding(),  // Binding for dependencies
    ),
    GetPage(
      name: AppRoutes.jobportalPage,
      page: () => JobsPortalPage(),
      binding: JobPortalBinding(),
    ),
    GetPage(
      name: AppRoutes.admitcardportalPage,
      page: () => AdmitCardPortalPage(),
      binding: AdmitCardPortalBinding(),
    ),GetPage(
      name: AppRoutes.libraryPage,
      page: () => LibraryPage(),
      binding: LibraryPageBinding(),
    ),
GetPage(
      name: AppRoutes.booksPage,
      page: () => BooksPage(),
      binding: BooksPageBinding(),
    ),
    GetPage(
      name: AppRoutes.oldpaperPage,
      page: () => OldPaperPage(),
      binding: OldPaperBinding(),
    ),
    GetPage(
      name: AppRoutes.notesPage,
      page: () => NotesPage(),
      binding: NotesBinding(),
    ),
    GetPage(
      name: AppRoutes.videosPage,
      page: () => VideosPage(),
      binding: VideosBinding(),
    ),
    GetPage(
      name: AppRoutes.appbarPage,
      page: () => CustomAppBar(),
      binding: AppbarBinding(),
    ),
    GetPage(
      name: AppRoutes.profilepicturePage,
      page: () => ProfilePage(),
      binding: ProfilePictureBinding(),
    ),
    GetPage(
      name: AppRoutes.privacypolicyPage,
      page: () => PrivacyPolicyPage(),
      binding: PrivacyPolicyBinding(),
    ),

>>>>>>> f7af307 (Changes in home screen)
  ];
}