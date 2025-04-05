import 'package:dio/dio.dart';
import 'package:indiasarkarinaukri/modals/AdmissionModel.dart';
import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
import '../modals/ResultsModel.dart';
import '../utils/api_constants.dart';

class AdmissionService {
  final Dio _dio= Dio();

  Future<List<AdmissionModel>> fetchadmission() async {
    try {
      final response = await _dio.get(ApiConstants.admission);

      if (response.statusCode == 200) {

        List<AdmissionModel> admission=(response.data as List)
            .map((item)=>AdmissionModel.fromJson(item)).toList();

        return admission;
      } else {
        throw Exception('Failed to load results');
      }
    } catch (e) {
      throw Exception('Failed to load results: $e');
    }
  }
}
