import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Color(0xff1A6350),
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 60,
        backgroundColor: Colors.green.withOpacity(0.01),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_rounded),
        ),
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color.fromARGB(255, 45, 170, 136),
                  Color.fromARGB(255, 26, 99, 80),
                  Color.fromARGB(255, 9, 34, 27),
                ],
                radius: 1.0,
                focalRadius: 10,
              ),
              boxShadow: [
                BoxShadow(blurRadius: 2),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset(0.1, 0.02),
            child: Text(
              'Trending Movies',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset(0.0, 0.14),
            child: Container(
              width: _width,
              height: 225,
              color: Color.fromARGB(80, 45, 170, 137),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.fromLTRB(10, 5, 15, 5),
                      padding: const EdgeInsets.all(6),
                      height: 215,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(2, 245, 245, 245),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(16, 0, 0, 0),
                            blurRadius: 6,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 120,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.shade400,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(16, 0, 0, 0),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                            child: Text(
                              'The Movies Name',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset(0.1, 0.55),
            child: Text(
              'Trending TV Series',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset(0.0, 1.0),
            child: Container(
              width: _width,
              height: 225,
              color: Color.fromARGB(80, 45, 170, 137),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.fromLTRB(10, 5, 15, 5),
                      padding: const EdgeInsets.all(6),
                      height: 215,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(2, 245, 245, 245),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(16, 0, 0, 0),
                            blurRadius: 6,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 120,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.shade200,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(16, 0, 0, 0),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                            child: Text(
                              'TV Series Name',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
