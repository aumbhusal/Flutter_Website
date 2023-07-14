import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webtuts/utils/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileNavBar(),
      desktop: (BuildContext context) => DesktopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      children: [
        const Icon(Icons.menu),
        logo(),
      ],
    ),
  );
}

Widget logo() {
  return SizedBox(
    height: 60,
    width: 150,
    child: Image.asset(Constants.netflix),
  );
}

Widget DesktopNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Row(
          children: [
            navButton('Home'),
            navButton('About'),
            navButton('Cast'),
            navButton('Trailor'),
          ],
        ),
        logo(),
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18, color: text == 'Home' ? Colors.red : Colors.white),
      ),
    ),
  );
}
