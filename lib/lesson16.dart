import 'package:flutter/material.dart';

void main(List<String> args) {
  print("hello");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'futter demo', theme: ThemeData(), home: Scaffold(body: HomeScreen()));
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
              label: Text('name'),
              hintText: 'enter your full name',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
            decoration: InputDecoration(
              label: Text('email'),
              hintText: 'enter your email',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              label: Text('password'),
              hintText: 'enter your password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.password),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: phoneController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your number';
              }
              if (!RegExp(r'^\d+$').hasMatch(value)) {
                return 'Please enter a valid number';
              }
              return null;
            },
            decoration: InputDecoration(
              label: Text('phone'),
              hintText: 'enter your phone number',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone_android),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: addressController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your address';
              }
              return null;
            },
            decoration: InputDecoration(
              label: Text('address'),
              hintText: 'enter your address',
              border: OutlineInputBorder(),
              prefixIcon: Icon((Icons.location_on)),
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              var isValid = _formKey.currentState!.validate();
              if (isValid) {
                // Access form data here
                print('Name: ${nameController.text}');
                print('Email: ${emailController.text}');
                print('Password: ${passwordController.text}');
                print('Phone: ${phoneController.text}');
                print('Address: ${addressController.text}');

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text('Awesome Snackbar!')));
              }
            },
            child: Text(('submit')),
          ),
        ],
      ),
    );
  }
}
