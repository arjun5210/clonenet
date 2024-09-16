import 'dart:convert';

import 'package:netflixproject/importantkey/constantapikey.dart';
import 'package:http/http.dart' as http;
import 'package:netflixproject/presentation/home/model/moviesmodel.dart';
import 'package:netflixproject/presentation/search/models/searchmodel.dart';

class callapi {
  static const searchstaticurl =
      "https://api.themoviedb.org/3/movie/popular?api_key=${constant.apikey}";

  Future<List<searchMovies>> getsearchstaticmovies() async {
    final response = await http.get(Uri.parse(searchstaticurl));
    if (response.statusCode == 200) {
      final decodedata = jsonDecode(response.body)['results'] as List;

      return decodedata.map((movie) => searchMovies.fromjson(movie)).toList();
    } else {
      throw Exception("something happend");
    }
  }

  Future getsearchresultmovies({String query = "k"}) async {
    final searchresult =
        'https://api.themoviedb.org/3/search/movie?api_key=${constant.apikey}&query=$query';

    final response = await http.get(Uri.parse(searchresult));
    if (response.statusCode == 200) {
      final decodedata = jsonDecode(response.body)['results'] as List;

      List film =
          decodedata.map((movie) => searchMovies.fromjson(movie)).toList();
      return film;
    } else {
      throw Exception("something happend");
    }
  }
}
