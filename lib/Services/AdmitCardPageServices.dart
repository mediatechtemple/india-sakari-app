import 'package:dio/dio.dart';
//import 'package:indiasarkarinaukri/modals/AdmissionModel.dart';
//import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
//import '../modals/ResultsModel.dart';
//import '../modals/JobsModel.dart';
import '../modals/AdmitCardModel.dart';
import '../modals/AdmitCardPageModel.dart';
import '../utils/api_constants.dart';

class AdmitCardPageService {
  final Dio _dio= Dio();

  Future<List<AdmitCardPageModel>> fetchAdmitCard() async {
    try {
      final response = await _dio.get(ApiConstants.admitcardpage);

      if (response.statusCode == 200) {

        List<AdmitCardPageModel> AdmitcardsPage=(response.data as List)
            .map((item)=>AdmitCardPageModel.fromJson(item)).toList();

        return AdmitcardsPage;
      } else {
        throw Exception('Failed to load results');
      }
    } catch (e) {
      throw Exception('Failed to load results: $e');
    }
  }
}
