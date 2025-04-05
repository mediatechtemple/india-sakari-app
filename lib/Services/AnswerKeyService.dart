import 'package:dio/dio.dart';
import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
import '../modals/ResultsModel.dart';
import '../utils/api_constants.dart';

class AnswerKeyService {
  final Dio _dio= Dio();

  Future<List<AnswerKeyModel>> fetchanswerKey() async {
    try {
      final response = await _dio.get(ApiConstants.answerKey);

      if (response.statusCode == 200) {

        List<AnswerKeyModel> answerKey=(response.data as List)
            .map((item)=>AnswerKeyModel.fromJson(item)).toList();

        return answerKey;
      } else {
        throw Exception('Failed to load results');
      }
    } catch (e) {
      throw Exception('Failed to load results: $e');
    }
  }
}
