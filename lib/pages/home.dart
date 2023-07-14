import 'package:flutter/material.dart';
import 'package:webtuts/utils/constants.dart';
import 'package:webtuts/widgets/mainContent.dart';
import 'package:webtuts/widgets/navBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration:  const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xffd00070),
              Color(0xff000000),
            ]),
            color: Colors.pink,
            image: DecorationImage(image: AssetImage(Constants.bg),fit: BoxFit.cover
            ),
          ),

          child: const Column(
            children: [
              NavBar(),
              SizedBox(
                height: 10,
              ),
              MainContent(),
            ],
          ),

        ),
      ),

    );
  }
}
