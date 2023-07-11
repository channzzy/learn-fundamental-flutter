import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn2/http_package/model/Album.dart';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load Album');
  }
}
