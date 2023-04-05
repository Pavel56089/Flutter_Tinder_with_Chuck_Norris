import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../model/joke.dart';

class ApiService {
  final http.Client httpClient;

  ApiService({required this.httpClient});

  Future<Joke> getJoke() async {
    final response = await httpClient
        .get(Uri.parse('https://api.chucknorris.io/jokes/random'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      final Joke joke = Joke.fromJson(data);
      return joke;
    } else {
      throw Exception('Failed to get joke');
    }
  }
}

final apiProvider = Provider<ApiService>((ref) {
  return ApiService(httpClient: http.Client());
});
