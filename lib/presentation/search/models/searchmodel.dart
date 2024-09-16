import 'dart:convert';

import 'package:flutter/foundation.dart';

class searchMovies {
  String? image;
  String? moviename;

  searchMovies({required this.image, required this.moviename});

// converting from json to class object
  factory searchMovies.fromjson(Map<String, dynamic> json) {
    return searchMovies(image: json['backdrop_path'], moviename: json['title']);
  }
}
