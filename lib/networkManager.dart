import 'dart:convert';
import 'package:http/http.dart' as http;
import 'modelManager.dart';

class NetworkManager {
  final String baseUrl;
  final String apiKey;

  NetworkManager({required this.baseUrl, required this.apiKey});

  Future<ApiResponse> getRequest(String endpoint) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': apiKey,
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      return ApiResponse.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
