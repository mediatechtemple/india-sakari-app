
import 'package:get/get.dart';
import 'package:indiasarkarinaukri/Services/JobService.dart';
import 'package:indiasarkarinaukri/modals/Jobs.dart';

class LatestJobsViewModel extends GetxController{

  var isLoading= true.obs;
  var latestjob=<Jobs>[].obs;

  final JobService jobService=JobService();

  Future<void> fetchLatestJob()async{

    try{
      isLoading(true);
      var fetchjob=await jobService.fetchjobs();
      print("dddddddddddddddddddddddddddddddddddddddddddd");
      print(fetchjob);
      latestjob.assignAll(fetchjob);
    }
    catch (e) {
      print("Error fetching posts: $e");
    } finally {
      isLoading(false); // End loading
    }
  }
}