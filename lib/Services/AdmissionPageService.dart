import 'package:dio/dio.dart';
//import 'package:indiasarkarinaukri/modals/AdmissionModel.dart';
//import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
//import '../modals/ResultsModel.dart';
import '../modals/AdmissionPageModel.dart';
import '../utils/api_constants.dart';
//import '../modals/JobsModel.dart';
//import '../utils/api_constants.dart';

class AdmissionPageService {
  final Dio _dio= Dio();

  Future<List<AdmissionPageModel>> fetchAdmissionPage() async {
    try {
      final response = await _dio.get(ApiConstants.admissionpage);

      if (response.statusCode == 200) {

        List<AdmissionPageModel> Admission=(response.data as List)
            .map((item)=>AdmissionPageModel.fromJson(item)).toList();

        return Admission;
      } else {
        throw Exception('Failed to load results');
      }
    } catch (e) {
      throw Exception('Failed to load results: $e');
    }
  }
}
