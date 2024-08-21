import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/my_settings.dart';

import '../model/photo.dart';

class PixabayApi implements PhotoApiRepository {
  static const  baseUrl = 'https://pixabay.com/api/';

  @override
  Future<List<Photo>> fetch(String query, {http.Client? client}) async {
    final uri = Uri.parse(
        "$baseUrl?key=$pixabayKey&q=$query&image_type=photo&pretty=true");

    // if (client == null) {
    //   client = http.Client();
    // }
    client ??= http.Client();

    final response = await client.get(uri);

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
