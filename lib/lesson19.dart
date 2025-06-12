import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "fulter down", theme: ThemeData(), home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.red,
            tabs: [Tab(text: 'Home', icon: Icon(Icons.import_contacts)), Tab(text: 'Search'), Tab(text: 'Profile')],
          ),
        ),
        body: TabBarView(children: [screen1(), screen2(), screen3()]),
      ),
    );
  }
}

class screen1 extends StatelessWidget {
  const screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("screen1");
  }
}

class screen2 extends StatelessWidget {
  const screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("screen2");
  }
}

class screen3 extends StatelessWidget {
  const screen3({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("screen3");
  }
}
