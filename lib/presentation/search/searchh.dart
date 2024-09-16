import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixproject/presentation/home/apicallfunction/callfunction.dart';
import 'package:netflixproject/presentation/home/model/moviesmodel.dart';
import 'package:netflixproject/presentation/widgets/bottom.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({super.key});

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  @override
  void initState() {
    final futureMovies = apicall().getlistmovies();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheigth = MediaQuery.of(context).size.height;
    var futureMovies = apicall().getlistmovies();
    var fav = apicall().convert();

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(4),
                child: CupertinoTextField(
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
              Expanded(
                child: Container(
                  child: ListView.separated(
                      itemBuilder: ((context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: screenwidth / 2.8,
                                decoration: BoxDecoration(
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         "https://image.tmdb.org/t/p/w500/${m.image}")),
                                    borderRadius: BorderRadius.circular(7)),
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                "heloooooooooooooooooooo",
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
                        // return ListTile(
                        //   title: Row(
                        //     children: [
                        //       Container(
                        //         height: screenheigth / 20,
                        //         padding: EdgeInsets.all(8.0),
                        //         decoration: BoxDecoration(
                        //           color: Colors.blueAccent,
                        //           borderRadius: BorderRadius.circular(10.0),
                        //         ),
                        //         child: Text(
                        //           'Item $index',
                        //           style: TextStyle(color: Colors.white),
                        //         ),
                        //       ),
                        //       Container(
                        //         color: Colors.red,
                        //         height: 20,
                        //         width: 50,
                        //       )
                        //     ],
                        //   ),
                        //   trailing: IconButton(
                        //       onPressed: (() {}),
                        //       icon: Icon(
                        //         Icons.play_arrow,
                        //         color: Colors.grey,
                        //       )),
                        // );
                      }),
                      separatorBuilder: ((context, index) {
                        return Divider();
                      }),
                      itemCount: 10),
                ),
              ),
            ],
          )),
    );
  }
}
