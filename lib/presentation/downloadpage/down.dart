import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixproject/presentation/commonwidgets/appbar.dart';
import 'package:netflixproject/presentation/commonwidgets/fontcolor.dart';

class download extends StatelessWidget {
  download({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: appappbar(),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(
                    color: ftcolor,
                    onPressed: (() {}),
                    icon: const Icon(Icons.settings)),
                const Text(
                  "Smart Downnloads",
                  style: TextStyle(fontWeight: FontWeight.bold, color: ftcolor),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Introducing Downloads For you",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ftcolor),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 35, right: 35, top: 15, bottom: 15),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Today is the day, please don't skip this 1-minute read. We're sorry to interrupt, but it's Sunday, 8 September, and our fundraiser doesn't last long.",
                    style: TextStyle(
                      letterSpacing: 1,
                      wordSpacing: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: Container(
                width: screenWidth / 1,
                height: screenHeight / 2.5,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 111,
                      backgroundColor: Color.fromARGB(255, 37, 36, 36),
                    ),
                    Positioned(
                      top: screenWidth * 0.20,
                      left: screenWidth * 0.21,
                      child: Transform.rotate(
                          angle: -20 * 3.1416 / 180,
                          child: Container(
                            width: screenWidth / 4.5,
                            height: screenHeight / 4.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://image.tmdb.org/t/p/w500/wWba3TaojhK7NdycRhoQpsG0FaH.jpg"),
                                  scale: 0.5,
                                )),
                          )),
                    ),
                    Positioned(
                      top: screenWidth * 0.20,
                      right: screenWidth * 0.21,
                      child: Transform.rotate(
                          angle: 20 * 3.1416 / 180,
                          child: Container(
                            width: screenWidth / 4.5,
                            height: screenHeight / 4.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://image.tmdb.org/t/p/w500/865DntZzOdX6rLMd405R0nFkLmL.jpg"),
                                  scale: 0.5,
                                )),
                          )),
                    ),
                    Positioned(
                      top: screenWidth * 0.12,
                      child: Container(
                        width: screenWidth / 4,
                        height: screenHeight / 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://image.tmdb.org/t/p/w500/xEt2GSz9z5rSVpIHMiGdtf0czyf.jpg"),
                              scale: 0.5,
                            )),
                      ),
                    ),
                    // Positioned(
                    //   top: screenWidth * 0.20,
                    //   child: Transform.rotate(
                    //       angle: 20 * 3.1416 / 180,
                    //       child: Container(
                    //         width: screenWidth / 4.5,
                    //         height: screenHeight / 4.5,
                    //         color: Colors.blue,
                    //       )),
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: SizedBox(
                height: 35,
                child: ElevatedButton(
                    onPressed: (() {}), child: const Text("Set up")),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: SizedBox(
                height: 35,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                    ),
                    onPressed: (() {}),
                    child: const Text(
                      "See What you can Dowload",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
