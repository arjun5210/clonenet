// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixproject/presentation/home/apicallfunction/callfunction.dart';
import 'package:netflixproject/presentation/home/model/moviesmodel.dart';
import 'package:netflixproject/presentation/search/apifunction/callingapifunction.dart';
import 'package:netflixproject/presentation/search/searchresult.dart';
import 'package:netflixproject/presentation/widgets/bottom.dart';

class searchsearchscreen extends StatefulWidget {
  searchsearchscreen({super.key});

  @override
  State<searchsearchscreen> createState() => _searchsearchscreenState();
}

class _searchsearchscreenState extends State<searchsearchscreen> {
  @override
  void initState() {
    // TODO: implement initState
    final futureMovies = callapi().getsearchstaticmovies();
    final futuretrendingMovies = apicall().gettrending();
  }

  @override
  Widget build(BuildContext context) {
    var futureMovies = callapi().getsearchstaticmovies();
    var futuretrendingMovies = apicall().gettrending();

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(4),
                  child: CupertinoTextField(
                    onChanged: ((value) {
                      if (value.isNotEmpty) {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: ((context) {
                          return result(
                            name: value,
                          );
                        })));
                      }
                    }),
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
                    "Top Searches",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.red,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 800,
                    child: FutureBuilder(
                        future: futureMovies,
                        builder: ((context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (snapshot.hasError) {
                            return Text("sorryy some thing happend");
                          } else if (snapshot.hasData) {
                            final m = snapshot.data as List<dynamic>;
                            return ListView(
                              scrollDirection: Axis.vertical,
                              children: List.generate(m.length, (index) {
                                final movie = m[index];

                                return Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 80,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    "https://image.tmdb.org/t/p/w500/${movie.image}")),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        m[index].moviename.toString(),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        child: IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(Icons.play_arrow)),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            );
                          }
                          return Text("jhjhj");
                        })),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class commoncard extends StatefulWidget {
  var movie;

  commoncard({super.key, required this.index, required this.movie});
  int index;

  @override
  State<commoncard> createState() => _commoncardState();
}

class _commoncardState extends State<commoncard> {
  apicall pp = new apicall();
  @override
  final List<Color> customColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.brown,
    Colors.yellow,
    Colors.pink,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    var movie;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://image.tmdb.org/t/p/w500/${movie.image}")),
            borderRadius: BorderRadius.circular(8)),
        width: 130,
      ),
    );
  }
}

class textcommoncard extends StatelessWidget {
  textcommoncard({super.key, required this.index, required this.movie});
  int index;
  var movie;

  final List<Color> customColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.brown,
    Colors.yellow,
    Colors.pink,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    var movie;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Stack(
        children: [
          Row(
            children: [
              // Container(
              //   color: Colors.grey,
              //   width: 30,
              // ),
              const Positioned(
                child: SizedBox(
                  width: 30,
                ),
              ),
              movie.image != null
                  ? Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://image.tmdb.org/t/p/w500/${movie.image}")),
                            borderRadius: BorderRadius.circular(8)),
                        width: 130,
                      ),
                    )
                  : Container(
                      height: 100,
                      width: 70,
                      color: Colors.grey,
                      child: Icon(Icons.image_not_supported),
                    ),
            ],
          ),
          Positioned(
            top: 100,
            left: 13,
            child: Text(
              index.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
