import 'package:flutter/material.dart';
import 'package:show_app/bookmark.dart';
import 'package:show_app/homepage_real.dart';
import 'package:show_app/screen/trending_screen.dart';
import 'package:show_app/screen/tvseries_screen.dart';
import 'homepage.dart';
import 'page_profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  final pages = [
    HomePage(),
    MovieScreen(),
    PageProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        // color: Color(0xff1A6350),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(200, 45, 45, 45),
              blurRadius: 8,
              spreadRadius: 3,
            ),
          ],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 13, 81, 62),
                      size: 25,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.bookmark,
                      color: Color.fromARGB(255, 13, 81, 62),
                      size: 25,
                    )
                  : const Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 13, 81, 62),
                      size: 25,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                      size: 25,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
