import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  print("hello");
  runApp(MaterialApp(home: Scaffold(body: Mytext())));
}

class Mytext extends StatelessWidget {
  const Mytext({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("himank is a boy");
  }
}

void addtocart() {
  print("addtocart");
}

class Mycart extends StatelessWidget {
  const Mycart({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        child: Column(
          children: [
            Image.asset("images/image1.jpg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("fruitsalad"),

                Row(children: [Icon(Icons.heart_broken), Icon(Icons.share)]),
              ],
            ),

            Divider(),
            Text("some quick exmple text to build on the card"),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    print("recepie cilck");
                  },
                  child: Text("recepie"),
                ),
                TextButton(onPressed: addtocart, child: Text("add to cart")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
