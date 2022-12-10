import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/pages/navpages/home_page.dart';
import 'package:travelapp/pages/navpages/main_page.dart';
import 'package:travelapp/pages/welcome_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This is the Root of Our Application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Project",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage());
  }
}
