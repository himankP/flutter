import 'package:flutter/material.dart';
import 'package:sample/screens/Homescreen.dart';
import 'package:sample/screens/Welcomescreen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(primarySwatch: Colors.blue),

      home: Scaffold(appBar: AppBar(title: const Text('Home')), body: Homescreen()),
      // home: Scaffold(
      //   appBar: AppBar(title: const Text('Sample App Home Page')),
      //   body: const Center(child: Text('Welcome to the Sample App!')),
      // ),
    );
  }
}
