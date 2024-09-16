import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixproject/presentation/downloadpage/down.dart';
import 'package:netflixproject/presentation/fastlaugh/fast.dart';
import 'package:netflixproject/presentation/home/homee.dart';
import 'package:netflixproject/presentation/newandhot/newhott.dart';
import 'package:netflixproject/presentation/search/s.dart';
import 'package:netflixproject/presentation/search/searchh.dart';
import 'package:netflixproject/presentation/widgets/bottom.dart';

class firstscreen extends StatelessWidget {
  firstscreen({super.key});
  List pages = [
    homescreen(),
    newscreen(),
    fastscreen(),
    searchsearchscreen(),
    download()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexchange,
            builder: ((context, index, child) {
              return pages[index];
            })),
        bottomNavigationBar: bottomnnavbar(),
      ),
    );
  }
}
