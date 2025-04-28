import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final card1 = CardData(
  "images/image1.jpg",
  "fruitsalad",
  "some quick exmple text to build on the card",
  "recepie",
  "add to cart",
  recepie,
  recepie,
);
final card2 = CardData(
  "images/image1.jpg",
  "fruitsalad",
  "some quick exmple text to build on the card",
  "recepie",
  "add to cart",
  recepie,
  recepie,
);

final card3 = CardData(
  "images/image1.jpg",
  "fruitsalad",
  "some quick exmple text to build on the card",
  "recepie",
  "add to cart",
  recepie,
  recepie,
);

final List<CardData> cards = [card1, card2, card3];

void main(List<String> args) {
  print("heoll");
  runApp(MaterialApp(home: Scaffold(body: myrow(cards: cards))));
}

void recepie() {}

class Mytext extends StatelessWidget {
  const Mytext({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("my is a tushar");
  }
}

/// images name desc blueButtonLabel greenbuttonlabel, greenfunction, bluefuction

class CardData {
  final String image;
  final String name;
  final String desc;
  final String bluebuttonlabel;
  final String greenbuttonlabel;
  final void greenfunction;
  final void bluefunction;
  CardData(
    this.image,
    this.name,
    this.desc,
    this.bluebuttonlabel,
    this.greenbuttonlabel,
    this.bluefunction,
    this.greenfunction,
  );
}

class Mycard extends StatelessWidget {
  final CardData data;

  const Mycard({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(data.image),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data.name),
              Row(children: [Icon(Icons.heart_broken), Icon(Icons.share)]),
            ],
          ),
          Divider(),
          Text(data.desc),

          Row(
            children: [
              TextButton(
                onPressed: () {
                  print("recepie cilck");
                },
                child: Text(data.bluebuttonlabel),
              ),
              TextButton(onPressed: () {}, child: Text(data.greenbuttonlabel)),
            ],
          ),
        ],
      ),
    );
  }
}

class myrow extends StatelessWidget {
  final List<CardData> cards;

  const myrow({super.key, required this.cards});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ...cards.map((card) {
            return Mycard(data: card);
          }),
        ],
      ),
    );
  }
}
