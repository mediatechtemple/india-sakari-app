import 'package:dio/dio.dart';
import 'package:indiasarkarinaukri/modals/AdmitCardModel.dart';
import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
import '../modals/ResultsModel.dart';
import '../utils/api_constants.dart';

class AdmitCardService {
  final Dio _dio= Dio();

  Future<List<AdmitCardModel>> fetchadmitcard() async {
    try {
      final response = await _dio.get(ApiConstants.admitcard);

      if (response.statusCode == 200) {
        List<AdmitCardModel> admitCard=(response.data as List)
            .map((item)=>AdmitCardModel.fromJson(item)).toList();

        return admitCard;
      } else {
        throw Exception('Failed to load results');
      }
    } catch (e) {
      throw Exception('Failed to load results: $e');
    }
  }
}
