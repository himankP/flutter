import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            Text("asdas"),

            Image.asset("images/image3.jpeg", width: 200, height: 200, fit: BoxFit.cover),
            SizedBox(height: 20),

            Text("wecomletothe ricpen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              "browse delicious recpies from round the world",
              style: TextStyle(fontSize: 16, color: Colors.blue[600]),
            ),
            TextButton(
              onPressed: () {},

              child: Text("Get Started", style: TextStyle(fontSize: 20, color: Colors.green)),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
