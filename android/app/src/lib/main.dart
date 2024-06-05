import 'package:flutter/material.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page App',
      theme: ThemeData.dark(),
      home: ProfilePage(),
    );
  }
}
