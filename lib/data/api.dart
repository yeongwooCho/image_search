import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/my_settings.dart';

import '../model/photo.dart';

class PixabayApi {
  final baseUrl = 'https://pixabay.com/api/';

  Future<List<Photo>> fetch(String query) async {
    final uri = Uri.parse(
        "$baseUrl?key=$pixabayKey&q=$query&image_type=photo&pretty=true");
    final response = await http.get(uri);

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
