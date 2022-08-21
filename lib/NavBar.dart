import 'package:flutter/material.dart';
import 'package:pinterest_nav_bar/pinterest_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PinterestNavBar(
      currentIndex: selectedPageIndex,
      onTap: (i) {
        setState(() {
          selectedPageIndex = i;
        });
      },
      items: const [
        Icons.groups_outlined,
        Icons.settings,
      ],
    );
  }
}
