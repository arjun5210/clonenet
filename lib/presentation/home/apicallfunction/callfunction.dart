import 'dart:convert';

import 'package:netflixproject/importantkey/constantapikey.dart';
import 'package:http/http.dart' as http;
import 'package:netflixproject/presentation/home/model/moviesmodel.dart';

class apicall {
  static const trendingurl =
      "https://api.themoviedb.org/3/movie/popular?api_key=${constant.apikey}";
  static const trendingoneurl =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=${constant.apikey}";

  Future<List<allMovies>> getlistmovies() async {
    final response = await http.get(Uri.parse(trendingurl));
    if (response.statusCode == 200) {
      final decodedata = jsonDecode(response.body)['results'] as List;

      return decodedata.map((movie) => allMovies.fromjson(movie)).toList();
    } else {
      throw Exception("something happend");
    }
  }

  Future<List<allMovies>> convert() async {
    var futureMovies = apicall().getlistmovies();
    List<allMovies> movies = await futureMovies as List<allMovies>;
    return movies;
  }

  Future<List<allMovies>> gettrending() async {
    final response = await http.get(Uri.parse(trendingoneurl));
    if (response.statusCode == 200) {
      final decode = jsonDecode(response.body)['results'] as List;

      return decode.map((e) => allMovies.fromjson(e)).toList();
    } else {
      throw Exception("wrong");
    }
  }
}
