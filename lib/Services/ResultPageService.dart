import 'package:dio/dio.dart';
//import 'package:indiasarkarinaukri/modals/AdmissionModel.dart';
//import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
//import '../modals/ResultsModel.dart';
import '../modals/JobsModel.dart';
import '../modals/ResultPageModel.dart';
import '../utils/api_constants.dart';

class ResultPageService {
  final Dio _dio= Dio();

  Future<List<ResultPageModel>> fetchResultPage() async {
    try {
      final response = await _dio.get(ApiConstants.resultpage);

      if (response.statusCode == 200) {

        List<ResultPageModel> Result=(response.data as List)
            .map((item)=>ResultPageModel.fromJson(item)).toList();

        return Result;
      } else {
        throw Exception('Failed to load results');
      }
    } catch (e) {
      throw Exception('Failed to load results: $e');
    }
  }
}
