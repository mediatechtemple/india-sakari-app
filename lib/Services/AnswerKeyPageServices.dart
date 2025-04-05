import 'package:dio/dio.dart';
//import 'package:indiasarkarinaukri/modals/AdmissionModel.dart';
//import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
//import '../modals/ResultsModel.dart';
//import '../modals/AnswerKeyModel.dart';
//import '../modals/JobsModel.dart';
import '../modals/AnswerKeyPageModel.dart';
import '../utils/api_constants.dart';

class AnswerKeyPageService {
  final Dio _dio= Dio();

  Future<List<AnswerKeyPageModel>> fetchAnswerKey() async {
    try {
      final response = await _dio.get(ApiConstants.answerkeypage);

      if (response.statusCode == 200) {

        List<AnswerKeyPageModel> AnswerKey =(response.data as List)
            .map((item)=>AnswerKeyPageModel.fromJson(item)).toList();

        return AnswerKey;
      } else {
        throw Exception('Failed to load results');
      }
    } catch (e) {
      throw Exception('Failed to load results: $e');
    }
  }
}
