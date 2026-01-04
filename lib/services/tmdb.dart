import 'dart:convert';
import 'package:http/http.dart' as http;

const String apiKey = 'be50234029227861244dc229b3cedd4e';
const String baseUrl = 'https://api.themoviedb.org/3';

class TMDBApi {
  static Future<List> getTrendingMovies() async {
    final url = Uri.parse('$baseUrl/trending/movie/week?api_key=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['results'];
    } else {
      return [];
    }
  }
}
