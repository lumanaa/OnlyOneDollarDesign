import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:onedollar/model/Image.dart';
import 'package:http/http.dart' as http;

class DataProvider extends ChangeNotifier {
  List<Album> _album = [];
  List<Album> cart = [];
  List<Album> get album => _album;
  List<String> imageUrls = [];
  String baseUrl = 'https://assets.explorug.com';

  Future<void> fetchAlbum() async {
    final response = await http.get(Uri.parse(
        'https://v3rc.explorug.com/modules/DesignList.aspx?name=only1dollar'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      _album = jsonList.map((json) => Album.fromJson(json)).toList();
      notifyListeners();

      // return _album;

      imageUrls = _album
          .map(
            (album) =>
                baseUrl +
                Uri.encodeFull(album.renderedImageUrl.substring(
                    album.renderedImageUrl.indexOf("/Assets") +
                        "/Assets".length)),
          )
          .toList();
    } else {
      print('Failed to fetch data: ${response.statusCode}');
      print('Response body: ${response.body}');
      throw Exception('Failed to fetch data');
    }
  }
}
