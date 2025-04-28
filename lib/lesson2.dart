void main() {
  print("hello");
  final name = printmyname("himank", "pant");
  print(name);
  final x = printmyage(27);

  print(x);

  const y = {"fristname": "himank", "lastname": "pant", "age": 27};
  final z = printmynamefromobject(y);
  print(z);

  final elephant = Animal();
  elephant.sleep();
  elephant.eat();
  elephant.drink();
  elephant.walking();
  final himank = human();
  himank.work();
  himank.sleep();
}

String printmyname(String fristname, String lastname) {
  return "$fristname $lastname";
}

String printmyage(int y) {
  return "$y";
}

String printmynamefromobject(Map obj) {
  print(obj);
  return "   ${obj["fristname"]} ${obj["lastname"]}  ${obj["age"]}   ";
}

class Animal {
  void sleep() {
    print("sleeping");
  }

  eat() {
    print("eating");
  }

  drink() {
    print("drinking");
  }

  walking() {
    print("walking");
  }
}

class human extends Animal {
  work() {
    print("working");
  }

  @override
  void sleep() {
    // TODO: implement sleep
    super.sleep();
  }
}
