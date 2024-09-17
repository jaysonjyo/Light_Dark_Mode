import 'package:dark_white_mode/First.dart';
import 'package:dark_white_mode/main.dart';
import 'package:dark_white_mode/second.dart';
import 'package:flutter/material.dart';


class BottamNavigation extends StatefulWidget {
  const BottamNavigation({super.key});

  @override
  State<BottamNavigation> createState() => _BottamNavigationState();
}

class _BottamNavigationState extends State<BottamNavigation> {
  final screens = [First(),Second()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // showUnselectedLabels: true,

        elevation: 0,
selectedIconTheme:Theme.of(context).iconTheme ,
        unselectedIconTheme:Theme.of(context).iconTheme ,

        fixedColor: Colors.grey,
         showSelectedLabels: true,
        backgroundColor:Theme.of(context).primaryColor,
         type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,

              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,

              ),
              label: "Favorite"),

        ],
      ),
      body: screens[currentIndex],
    );
  }
}
