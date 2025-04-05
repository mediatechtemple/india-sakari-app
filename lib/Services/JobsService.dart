import 'package:dio/dio.dart';
import '../modals/JobsModel.dart';
import '../utils/api_constants.dart';

class JobsService {
  final Dio _dio = Dio();

  Future<List<JobsModel>> fetchJobs() async {
    try {
      final response = await _dio.get(ApiConstants.jobs);

      if (response.statusCode == 200) {
        List<JobsModel> jobs = (response.data as List)
            .map((item) => JobsModel.fromJson(item)).toList();

        return jobs;
      } else {
        throw Exception('Failed to load jobs');
      }
    } catch (e) {
      throw Exception('Failed to load jobs: $e');
    }
  }
}
