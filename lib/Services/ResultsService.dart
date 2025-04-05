import 'package:dio/dio.dart';
import '../modals/ResultsModel.dart';
import '../utils/api_constants.dart';

class ResultsService {
  final Dio _dio= Dio();

  Future<List<ResultsModal>> fetchResults() async {
    try {
      final response = await _dio.get(ApiConstants.results);

      if (response.statusCode == 200) {

        List<ResultsModal> results=(response.data as List)
            .map((item)=>ResultsModal.fromJson(item)).toList();

        return results;
      } else {
        throw Exception('Failed to load results');
      }
    } catch (e) {
      throw Exception('Failed to load results: $e');
    }
  }
}
