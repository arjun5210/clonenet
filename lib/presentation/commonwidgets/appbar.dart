import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixproject/presentation/commonwidgets/fontcolor.dart';

class appappbar extends StatelessWidget {
  appappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Row(
          children: [
            const Expanded(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Downloads",
                style: TextStyle(
                    color: ftcolor, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  color: ftcolor, onPressed: (() {}), icon: Icon(Icons.cast)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 20,
                width: 20,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
