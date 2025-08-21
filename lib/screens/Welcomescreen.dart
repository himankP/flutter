import 'package:flutter/material.dart';
import 'Homescreen.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20),
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("images/image3.jpeg", width: 200, height: 200, fit: BoxFit.cover),
              SizedBox(height: 20),

              Text("wecomletothe ricpen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                "browse delicious recpies from round the world",
                style: TextStyle(fontSize: 16, color: Colors.blue[600]),
              ),
              TextButton(
                onPressed: () {
                  SizedBox(height: 20);
                  // Navigator.pushNamed(context, '/homescreen');
                  // Alternatively, you can use:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
                },

                child: Text("Get Started", style: TextStyle(fontSize: 20, color: Colors.green)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
