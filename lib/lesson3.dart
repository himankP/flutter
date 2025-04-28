import 'dart:js_interop';

import 'package:flutter/material.dart';

main() {
  print("hello");

  // runApp(MaterialApp(home: MyTextWidget()));
  // runApp(MaterialApp(home: MyColumn()));
  // runApp(MaterialApp(home: MyRow()));
  // runApp(MaterialApp(home: MyColumn2()));
  // runApp(MaterialApp(home: Mycontainer()));
  runApp(MaterialApp(home: MyColumn3()));
  final lion = Animal();
  lion.sleep();
  lion.eat();
  lion.drink();
  final tushar = human();
  tushar.work();
  tushar.sleep();
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Hello world');
  }
}

class MyTextWidget1 extends StatelessWidget {
  const MyTextWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('my name himank pant');
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [MyTextWidget(), MyTextWidget1()]);
  }
}

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [MyTextWidget(), MyTextWidget1()]);
  }
}

class MyColumn2 extends StatelessWidget {
  const MyColumn2({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [MyRow(), MyTextWidget1()]);
  }
}

class Mycontainer extends StatelessWidget {
  const Mycontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.amber, child: MyColumn2());
  }
}

class MyRow1 extends StatelessWidget {
  const MyRow1({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(color: Colors.blue, height: 100, width: 100),
        Container(color: Colors.deepOrange, height: 100, width: 100),
      ],
    );
  }
}

class MyRow2 extends StatelessWidget {
  const MyRow2({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(color: Colors.green, height: 100, width: 100),
        Container(color: Colors.lightGreenAccent, height: 100, width: 100),
      ],
    );
  }
}

class MyColumn3 extends StatelessWidget {
  const MyColumn3({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 100,
      width: 100,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [MyRow1(), MyRow2()]),
    );
  }
}

class Animal {
  sleep() {
    print("Animalsleeping");
  }

  drink() {
    print("drinking");
  }

  eat() {
    print("eating");
  }
}

class human extends Animal {
  work() {
    print("working");
  }

  @override
  sleep() {
    print("facebbog 0+leeping");
  }
}
