import 'package:flutter/material.dart';
import 'package:uas_mobile_programming/pages/home_page.dart';
import 'package:uas_mobile_programming/pages/course_page.dart';
import 'package:uas_mobile_programming/pages/sign_in.dart';
import 'package:uas_mobile_programming/pages/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DICODER",
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
      routes: <String, WidgetBuilder>{
        '/signin': (context) => SignInPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/course': (context) => CoursePage(),
      },
    );
  }
}
