import 'package:flutter/material.dart';

void main(List<String> args) {
  print("hello");
  runApp(MaterialApp(home: Scaffold(body: MyGrid())));
}

class card extends StatelessWidget {
  const card({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("FHHGG");
  }
}

class Mymodel {
  final String image;
  final String name;
  Mymodel(this.image, this.name);
}

Mymodel card1 = Mymodel("images/image1.jpg", "buying");
Mymodel card2 = Mymodel("images/image1.jpg", "selling");
Mymodel card3 = Mymodel("images/image1.jpg", "trades");
Mymodel card4 = Mymodel("images/image1.jpg", "videos");
Mymodel card5 = Mymodel("images/image1.jpg", "deais");
Mymodel card6 = Mymodel("images/image1.jpg", "cases study");

List<Mymodel> cards = [card1, card2, card3, card4, card5, card6];

class Mycard extends StatelessWidget {
  Mymodel data;
  Mycard({super.key, required this.data});

  @override
  Widget build(BuildContext convert) {
    return Card(child: Column(children: [Image.asset(data.image), Text(data.name)]));
  }
}

class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return Mycard(data: cards[index]);
      },
    );
  }
}
