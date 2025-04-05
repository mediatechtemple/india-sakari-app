

import 'package:dio/dio.dart';
import 'package:indiasarkarinaukri/modals/AppNotificationModel.dart';

import '../utils/api_constants.dart';

class AppNotificationService{
final Dio _dio= Dio();

Future<List<AppNotificationModel>> fetchnotification()async{
  try {
    final responce=await _dio.get(ApiConstants.appNotofication);

    print(ApiConstants.jobs);
    if(responce.statusCode==200){
      List<AppNotificationModel> notificaiton=(responce.data as List)
          .map((item)=>AppNotificationModel.fromJson(item)).toList();
      print(notificaiton.toString());
      print("fffffffffffffffffffffffffffffffffffffffffffffffffff");
      return notificaiton;
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