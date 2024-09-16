import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixproject/presentation/commonwidgets/fontcolor.dart';
import 'package:netflixproject/presentation/widgets/bottom.dart';

class fastscreen extends StatelessWidget {
  const fastscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 57, 50, 50),
        body: vediolist(),
      ),
    );
  }
}

class vediolist extends StatelessWidget {
  const vediolist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    onPressed: (() {}),
                    icon: const Icon(Icons.volume_mute),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                            Text(
                              "ladoo",
                              style: TextStyle(color: ftcolor),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (() {}),
                                icon: const Icon(
                                  Icons.face_outlined,
                                  color: ftcolor,
                                )),
                            const Text(
                              "lol",
                              style: TextStyle(color: ftcolor),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (() {}),
                                icon: const Icon(
                                  Icons.add,
                                  color: ftcolor,
                                )),
                            const Text(
                              "My List",
                              style: TextStyle(color: ftcolor),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (() {}),
                                icon: const Icon(
                                  Icons.send,
                                  color: ftcolor,
                                )),
                            const Text(
                              "Share",
                              style: TextStyle(color: ftcolor),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (() {}),
                                icon: const Icon(
                                  Icons.play_arrow,
                                  color: ftcolor,
                                )),
                            const Text(
                              "Play",
                              style: TextStyle(color: ftcolor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 69, 225, 25),
          ),
          Container(
            color: const Color.fromARGB(255, 14, 14, 218),
          )
        ],
      ),
    );
  }
}
