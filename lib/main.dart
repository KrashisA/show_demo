import 'package:flutter/material.dart';
import 'log_in.dart';

void main() {
  runApp(ShowApp());
}

class ShowApp extends StatefulWidget {
  const ShowApp({Key? key}) : super(key: key);

  @override
  State<ShowApp> createState() => _ShowAppState();
}

class _ShowAppState extends State<ShowApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}
