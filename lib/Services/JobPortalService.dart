import 'dart:convert';

import 'package:dio/dio.dart';
import '../modals/JobsPortalModel.dart';
import '../utils/api_constants.dart';

class JobPortalService {
  final Dio _dio = Dio();

  Future<JobPortalModel> fetchjobportal(String slug) async {

    try {
      final response = await _dio.get(ApiConstants.jobportal + slug);

      if (response.statusCode == 200) {

       return JobPortalModel.fromJson(response.data);

      } else {
          throw Exception('Unexpected response format');
        }
      // } else {
      //   print("fkowerinfijerwnnfiuwewrwnnjifnewrjiwfnjikernfjikernfg545454");
      //
      //   throw Exception('Failed to load jobs: Unexpected status code ${response.statusCode}');
      // }
    } catch (e) {
      print("fkowerinfijerwnnfiuwewrwnnjifnewrjiwfnjikernfjikernfg2323");

      throw Exception('Failed to load jobs: $e');
    }
  }
}
