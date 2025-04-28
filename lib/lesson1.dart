import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  print("My name is Tusar!");

  print(pop());
  print(printmyname());
  print(mydata());

  Person p = Person("rahul", 18);
  p.introduce();

  Bird crow = Bird("Crow");
  Bird parrot = Bird("Parrot");

  crow.fly();
  crow.eat();
  crow.drink();

  parrot.fly();
  parrot.eat();
  parrot.drink();
}

int pop() {
  var x = 5;
  x = 7;
  final y = 6;
  const z = 10;

  List list = [12, 13, "req"];

  return z;
}

String printmyname() {
  return "my name himank";
}

Map mydata() {
  return {"name": "name himank pant", "age": 24};
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void introduce() {
    print("hi,im /$name and im /$age years old");
  }
}

class Bird {
  String name;

  Bird(this.name);

  void fly() {
    print(" $name Flying...");
  }

  eat() {
    print("$name eating");
  }

  drink() {
    print("$name dirnking");
  }
}
