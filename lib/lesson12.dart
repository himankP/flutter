import 'package:flutter/material.dart';

void main(List<String> args) {
  print("hello");
  runApp(
    MaterialApp(
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.cloud_outlined)),
                Tab(icon: Icon(Icons.beach_access_sharp)),
                Tab(icon: Icon(Icons.brightness_5_sharp)),
              ],
            ),
          ),
          body: TabBarView(children: [Screen1(), screen2(), screen3()]),
        ),
      ),
    ),
  );
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("Sreeen1");
  }
}

class screen2 extends StatelessWidget {
  const screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("sreen2");
  }
}

class screen3 extends StatelessWidget {
  const screen3({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("screen3");
  }
}
