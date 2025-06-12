import 'package:flutter/material.dart';
import 'package:sample/lesson14.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(primarySwatch: Colors.blue),
      home: SafeArea(child: Myscreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller1 = TextEditingController(text: '');

  final controller2 = TextEditingController(text: '');
  final controller3 = TextEditingController(text: '');
  final controller4 = TextEditingController(text: '');
  final controler6 = TextEditingController(text: '');
  final controler7 = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          TextField(
            controller: controller1,
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Enter your full name',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: controller4,
            decoration: InputDecoration(
              labelText: 'email',
              hintText: 'Enter your full emailaddress',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.number,
            controller: controller2,
            decoration: InputDecoration(
              labelText: 'numbe',
              hintText: 'Enter your full number',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.phone,
            controller: controller3,
            decoration: InputDecoration(
              labelText: 'phone',
              hintText: 'Enter your full phone',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            obscureText: true,

            controller: controler6,
            decoration: InputDecoration(
              labelText: 'password',
              hintText: 'Enter your full password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          TextField(
            maxLines: 4,
            keyboardType: TextInputType.multiline,

            controller: controler7,
            decoration: InputDecoration(
              labelText: 'multiline',
              hintText: 'Enter your full mulitiline',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}

class Myscreen extends StatelessWidget {
  Myscreen({super.key});
  final controller1 = TextEditingController(text: '');
  final controller2 = TextEditingController(text: '');
  final controller3 = TextEditingController(text: '');
  final controller4 = TextEditingController(text: '');
  final controller5 = TextEditingController(text: '');
  final controller6 = TextEditingController(text: '');
  final controller7 = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          TextField(
            controller: controller1,
            decoration: InputDecoration(
              labelText: 'Name txtefield',
              hintText: 'Enter your full nametextfield',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),

          TextField(
            controller: controller2,
            decoration: InputDecoration(
              labelText: '  - Phone (TextField with number keyboard))',
              hintText: 'Enter your full phone (TextField with email keyboard)',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),

          TextField(
            controller: controller3,
            decoration: InputDecoration(
              labelText: 'Email (TextField with email keyboard)',
              hintText: 'Enter your full Email (TextField with email keyboard)',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: controller4,
            decoration: InputDecoration(
              labelText: '   - Message (TextField with multiple lines))',
              hintText: 'Enter your full    - Message (TextField with multiple lines))',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),

          SizedBox(height: 20),
          TextField(
            controller: controller5,
            decoration: InputDecoration(
              labelText: '   -- Email input ))',
              hintText: 'Enter your full    - Email input- ))',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: controller6,
            decoration: InputDecoration(
              labelText: '   -- - Password input (obscureText) ))',
              hintText: 'Enter your full    - - Password input (obscureText) ))',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: controller7,
            decoration: InputDecoration(
              labelText: '    - A button that prints both inputs) ))',
              hintText: 'Enter your full     - A button that prints both inputs) ))',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
