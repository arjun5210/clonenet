import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class searchsearch extends StatelessWidget {
  const searchsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const CupertinoTextField(
        style: TextStyle(
          color: Colors.grey,
        ),
        placeholder: "search",
        prefix: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        suffix: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.close,
              color: Colors.grey,
            )),
      ),
    );
  }
}
