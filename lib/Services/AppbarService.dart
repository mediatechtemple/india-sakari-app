import 'dart:convert';
import 'package:http/http.dart' as http;
import '../modals/AppbarModel.dart';
// Import your model class

class AppbarServiceModel {
  final String apiUrl = 'https://backend.indiasarkarinaukri.com/generate';

  // Fetch data from API and return a list of SocialMediaPlatform objects
  Future<List<SocialMediaPlatform>> fetchSocialMediaPlatforms() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        // Agar 'data' key mein list hai, toh usse extract karen
        final List<dynamic> pdata = data['rows'];

        return pdata
            .map((jsonItem) => SocialMediaPlatform.fromJson(jsonItem))
            .toList();
      } else {
        print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm111m");

        throw Exception('Failed to load data');
      }
    } catch (e) {
      print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm3333$e");

      throw Exception('Error fetching data: $e');
    }
  }
}
