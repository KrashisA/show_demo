import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({Key? key}) : super(key: key);

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 174, 140),
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 4,
        backgroundColor: Color.fromARGB(255, 46, 174, 140),
        title: Text('Profile'),
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        // color: ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username'),
            Text('Bio'),
            Container(
              height: 60,
              width: 200,
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.black54,
              ),
              child: Text(
                'Bookmark',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 60,
              width: 200,
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.black54,
              ),
              child: Text(
                'Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 60,
              width: 200,
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.black54,
              ),
              child: Text(
                'About Us',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 60,
              width: 200,
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.black54,
              ),
              child: Text(
                'Log Out',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
