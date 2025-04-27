import 'package:flutter/material.dart';
import 'package:assignment05/listview_page.dart';
import 'package:assignment05/gridview_page.dart';
import 'package:assignment05/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assignment App",
      theme: ThemeData.dark(),
      
      home: LandingPage(), 
    );
  }
}
