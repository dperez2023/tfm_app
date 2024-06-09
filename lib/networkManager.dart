import 'package:http/http.dart' as http;

class NetworkManager {
  final String baseUrl;
  final String apiKey;

  NetworkManager({required this.baseUrl, required this.apiKey});

  Future<http.Response> getRequest(String endpoint) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': apiKey,
      },
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load data');

    }
  }
}
