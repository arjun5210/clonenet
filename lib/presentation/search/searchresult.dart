import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixproject/importantkey/constantapikey.dart';
import 'package:netflixproject/presentation/commonwidgets/appbar.dart';
import 'package:netflixproject/presentation/commonwidgets/searchoption.dart';
import 'package:netflixproject/presentation/home/apicallfunction/callfunction.dart';
import 'package:netflixproject/presentation/search/apifunction/callingapifunction.dart';
import 'package:http/http.dart' as http;

class result extends StatefulWidget {
  result({super.key, required this.name});
  String name;

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  List movies = [];
  String name = "l";
  @override
  void initState() {
    searchMovies(name);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoTextField(
              onChanged: (value) async {
                return searchMovies(value);
              },
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 55, 51, 51)),
              style: const TextStyle(
                color: Colors.white,
              ),
              placeholder: "search",
              prefix: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffix: const CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Movies & TV",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: List.generate(movies.length, (index) {
                  final mv = movies[index];

                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://image.tmdb.org/t/p/w500${mv['poster_path']}"))),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Future<void> searchMovies(String query) async {
    if (query.isEmpty) {
      setState(() {
        movies = [];
      });
      return;
    }

    final url = Uri.parse(
        'https://api.themoviedb.org/3/search/movie?api_key=${constant.apikey}&query=$query');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        movies = data['results'];
      });
    } else {
      throw Exception('Failed to load movies');
    }
  }
}

class maincard extends StatelessWidget {
  const maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.red,
          image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(""))),
    );
  }
}
