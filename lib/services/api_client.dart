import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;
  ApiClient(this.baseUrl);
  Future<Map<String, dynamic>> getLiveRisk(double lat, double lon) async {
    final uri = Uri.parse('$baseUrl/live-risk?lat=$lat&lon=$lon');
    final r = await http.get(uri);
    return json.decode(r.body) as Map<String, dynamic>;
  }
}
