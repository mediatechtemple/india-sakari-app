import 'dart:convert';

import 'package:dio/dio.dart';
//import '../modals/JobsPortalModel.dart';
import '../modals/AdmitCardModel.dart';
import '../modals/AdmitCardPortalModel.dart';
import '../utils/api_constants.dart';

class AdmitCardPortalService {
  final Dio _dio = Dio();

  Future<AdmitCardPortalModel> fetchadmitcardportal(String slug) async {
print("JUSDINFOIOJWJENFIJHWERBFIUWERWFGGERG");
print(ApiConstants.admitcardportal + slug);
    try {
      final response = await _dio.get(ApiConstants.admitcardportal + slug);

      if (response.statusCode == 200) {

        return AdmitCardPortalModel.fromJson(response.data);

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
