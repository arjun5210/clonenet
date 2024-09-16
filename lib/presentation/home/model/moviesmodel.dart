import 'dart:convert';

import 'package:flutter/foundation.dart';

class allMovies {
  String? image;

  allMovies({required this.image});

// converting from json to class object
  factory allMovies.fromjson(Map<String, dynamic> json) {
    return allMovies(image: json['poster_path']);
  }
}
