// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:math';

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixproject/presentation/home/apicallfunction/callfunction.dart';
import 'package:netflixproject/presentation/home/model/moviesmodel.dart';
import 'package:netflixproject/presentation/widgets/bottom.dart';

class homescreen extends StatefulWidget {
  homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  void initState() {
    // TODO: implement initState
    final futureMovies = apicall().getlistmovies();
    final futuretrendingMovies = apicall().gettrending();
  }

  @override
  Widget build(BuildContext context) {
    var futureMovies = apicall().getlistmovies();
    var futuretrendingMovies = apicall().gettrending();

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  color: Colors.red,
                  child: Stack(
                    children: [
                      // Background image
                      Container(
                        width: double.infinity,
                        height:
                            500, // Make sure this matches the parent Container's height
                        child: Image.network(
                          "https://image.tmdb.org/t/p/w500/dasgPx3OgkxHSQyncKlApfZkpi2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Overlaying content (use Positioned for better control)
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: Column(
                            children: [
                              // Row with logo and icons
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.network(
                                    "https://images.ctfassets.net/y2ske730sjqp/5QQ9SVIdc1tmkqrtFnG9U1/de758bba0f65dcc1c6bc1f31f161003d/BrandAssets_Logos_02-NSymbol.jpg?w=940",
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: (() {}),
                                          icon: const Icon(
                                            Icons.cast,
                                            color: Colors.white,
                                          )),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              // Buttons for TV Shows, Movies, Categories
                              Container(
                                height: 30,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                        onPressed: (() {}),
                                        child: const Text(
                                          "TV Shows",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    TextButton(
                                        onPressed: (() {}),
                                        child: const Text(
                                          "Movies",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    TextButton(
                                        onPressed: (() {}),
                                        child: const Text(
                                          "Categories",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 5,
                        child: Container(
                          child: Column(
                            children: [
                              // Row with logo and icons

                              // Buttons for TV Shows, Movies, Categories
                              Container(
                                height: 60,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        IconButton(
                                            onPressed: (() {}),
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )),
                                        Text(
                                          "My List",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      height: 33,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  20), // Set the border radius here
                                            ),
                                          ),
                                          onPressed: (() {}),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  onPressed: (() {}),
                                                  icon: const Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.black,
                                                  )),
                                              const Text(
                                                "Play",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          )),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          IconButton(
                                              onPressed: (() {}),
                                              icon: const Icon(
                                                Icons.info,
                                                color: Colors.white,
                                              )),
                                          const Padding(
                                            padding: EdgeInsets.all(0),
                                            child: Text(
                                              "Info",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  child: Text(
                    "Released in Past year",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 200,
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
                            final movies = snapshot.data!;
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(movies.length, (index) {
                                final movie = movies[index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://image.tmdb.org/t/p/w500/${movie.image}")),
                                        borderRadius: BorderRadius.circular(8)),
                                    width: 130,
                                  ),
                                );
                              }),
                            );
                          }
                          return Text("jhjhj");
                        })),
                  ),
                ),
                // topratedddddddd//////////////////////////////////////////////////////////////////////////////////////
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  child: Text(
                    "Top Rated",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 200,
                    child: FutureBuilder(
                        future: futuretrendingMovies,
                        builder: ((context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (snapshot.hasError) {
                            return Text("sorryy some thing happend");
                          } else if (snapshot.hasData) {
                            final m = snapshot.data!;
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(m.length, (index) {
                                final movie = m[index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://image.tmdb.org/t/p/w500/${movie.image}")),
                                        borderRadius: BorderRadius.circular(8)),
                                    width: 130,
                                  ),
                                );
                              }),
                            );
                          }
                          return Text("jhjhj");
                        })),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 10),
                  child: Text(
                    "Trending Position",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 200,
                    child: FutureBuilder(
                        future: futuretrendingMovies,
                        builder: ((context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (snapshot.hasError) {
                            return Text("sorryy some thing happend");
                          } else if (snapshot.hasData) {
                            final m = snapshot.data!;
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(m.length, (index) {
                                final movie = m[index];
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
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8)),
                                                    width: 130,
                                                  ),
                                                )
                                              : Container(
                                                  height: 100,
                                                  width: 70,
                                                  color: Colors.grey,
                                                  child: Icon(Icons
                                                      .image_not_supported),
                                                ),
                                        ],
                                      ),
                                      Positioned(
                                          top: 100,
                                          left: 13,
                                          child: BorderedText(
                                              strokeWidth:
                                                  3.0, // Border thickness
                                              strokeColor:
                                                  Colors.red, // Border color

                                              child: Text(
                                                ((index) + 1).toString(),
                                                style: TextStyle(
                                                  fontSize: 80,
                                                  color: Colors.black,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ))
                                          // child: Text(
                                          //   index.toString(),
                                          //   style: const TextStyle(
                                          //     color: Colors.white,
                                          //     fontSize: 100,
                                          //   ),
                                          // ),
                                          ),
                                    ],
                                  ),
                                );
                              }),
                            );
                          }
                          return Text("jhjhj");
                        })),
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.only(left: 15),
                //   child: Text(
                //     "Trending Now",
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 10),
                //   child: Container(
                //     height: 200,
                //     child: ListView(
                //       scrollDirection: Axis.horizontal,
                //       children: List.generate(20, (index) {
                //         return commoncard(
                //           index: index,
                //         );
                //       }),
                //     ),
                //   ),
                // ),
                // const Padding(
                //   padding: EdgeInsets.only(left: 15),
                //   child: Text(
                //     "New release",
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 10),
                //   child: Container(
                //     height: 200,
                //     child: ListView(
                //       scrollDirection: Axis.horizontal,
                //       children: List.generate(20, (index) {
                //         return commoncard(
                //           index: index,
                //         );
                //       }),
                //     ),
                //   ),
                // ),
                // const Padding(
                //   padding: EdgeInsets.only(left: 15),
                //   child: Text(
                //     "New",
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 10),
                //   child: Container(
                //     height: 200,
                //     child: ListView(
                //       scrollDirection: Axis.horizontal,
                //       children: List.generate(20, (index) {
                //         return textcommoncard(
                //           index: index,
                //         );
                //       }),
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: Stack(
                //     children: [
                //       Row(
                //         children: List.generate(20, (index) {
                //           return commoncard(index: index);
                //         }),
                //       ),
                //       Text("heloo"),
                //     ],
                //   ),
                // ),
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
