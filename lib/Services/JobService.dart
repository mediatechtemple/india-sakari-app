import 'package:dio/dio.dart';

import '../modals/Jobs.dart';
import '../utils/api_constants.dart';

class JobService{
  final Dio _dio= Dio();

  Future<List<Jobs>> fetchjobs()async{
      try {
        final responce=await _dio.get(ApiConstants.jobs);

        print("ffffffffffffffffffffffffffffffffffffffffffffffff");
        print(ApiConstants.jobs);
        if(responce.statusCode==200){
          List<Jobs> jobs=(responce.data as List)
              .map((item)=>Jobs.fromJson(item)).toList();
          print(jobs.toString());
          return jobs;
        }
        else{
          throw Exception("Failed to load posts");
        }

      }
      catch(e){
        throw Exception("Error fetching posts: $e");
      }

  }
}