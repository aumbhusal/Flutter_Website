import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webtuts/utils/constants.dart';
import 'package:webtuts/widgets/navBar.dart';

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileMainContent(),
      desktop: (BuildContext context) => DesktopMainContent(),
    );
  }
}

class MobileMainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(Constants.squidGame),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Constants.figures),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Breakthrough Technology Promises to \n Revolutionize Renewable Energy',
                                  style: TextStyle(fontSize: screenWidth! / 70),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.trending_up,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '#1 Trending',
                                      style: TextStyle(
                                          fontSize: screenWidth! / 100),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 42,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          backgroundColor:
                          MaterialStateProperty.all(Color(0xffe50914)),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Watch Now',
                          style: TextStyle(letterSpacing: 1.2, fontSize: 19),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          navButton('S1'),
                          navButton('E4'),
                          navButton('2023'),
                          Image.asset(Constants.imdb),
                          navButton('7.4'),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
                  child: Image.asset(Constants.squid),
                ))
          ],
        ),
      ),
    );
  }
}



class DesktopMainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(Constants.squidGame),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Constants.figures),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Breakthrough Technology Promises to \n Revolutionize Renewable Energy',
                                  style: TextStyle(fontSize: screenWidth! / 70),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.trending_up,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '#1 Trending',
                                      style: TextStyle(
                                          fontSize: screenWidth! / 100),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 42,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffe50914)),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Watch Now',
                          style: TextStyle(letterSpacing: 1.2, fontSize: 19),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        navButton('S1'),
                        navButton('E4'),
                        navButton('2023'),
                        Image.asset(Constants.imdb),
                        navButton('7.4'),

                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              child: Image.asset(Constants.squid),
            ))
          ],
        ),
      ),
    );
  }
}
