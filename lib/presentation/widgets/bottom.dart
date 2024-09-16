import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

ValueNotifier indexchange = ValueNotifier(0);

class bottomnnavbar extends StatelessWidget {
  bottomnnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchange,
        builder: ((context, newindex, _child) {
          return BottomNavigationBar(
            currentIndex: newindex,
            onTap: (index) {
              indexchange.value = index;
            },
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            items: const [
              BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "new & hot", icon: Icon(Icons.account_box_sharp)),
              BottomNavigationBarItem(
                  label: "FastLaught", icon: Icon(Icons.face)),
              BottomNavigationBarItem(
                  label: "Search", icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  label: "Downloads", icon: Icon(Icons.download))
            ],
          );
        }));
  }
}
