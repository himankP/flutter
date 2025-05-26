import 'package:flutter/material.dart';
import 'package:sample/lesson4.dart';

void main(List<String> args) {
  print("hello");
  runApp(MaterialApp(home: Scaffold(body: MyWidget(data: card1))));
}

class Mycard extends StatelessWidget {
  const Mycard({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("gghf");
  }
}

class card {
  final String image;
  final String name;
  final String desc;
  final String button;
  final int itemCount;
  card(this.image, this.name, this.desc, this.button, this.itemCount);
}

card card1 = card("images/image1.jpg", "acer", "some quick exmple text to build on the card", "addtocart", 0);

class MycardUI extends StatelessWidget {
  card data;
  MycardUI({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(data.image),
          Text(data.name),
          Text(data.desc),
          Row(children: [TextButton(onPressed: () {}, child: Text("addtocart")), Text("${data.itemCount}")]),
        ],
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  card data;
  MyWidget({super.key, required this.data});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var count;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("on screen");

    count = widget.data.itemCount;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(widget.data.image),
          Text(widget.data.name),
          Text(widget.data.desc),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    count = count + 1;
                  });

                  print(count);
                },
                child: Text("addtocart"),
              ),
              Text("$count"),
            ],
          ),
        ],
      ),
    );
  }
}
