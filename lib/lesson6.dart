import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardData {
  final String image;
  final String name;
  final int price;
  final String desc;
  CardData(this.image, this.name, this.price, this.desc);
}

CardData card2 = CardData("images/image1.jpg", "nikon", 34499, "some quick exmple text to build on the card");
final CardData card1 = CardData("images/image1.jpg", "nikon", 34499, "some quick exmple text to build on the card");
final CardData card3 = CardData("images/image1.jpg", "nikon", 34499, "some quick exmple text to build on the card");

final CardData card4 = CardData("images/image1.jpg", "nikon", 34499, "some quick exmple text to build on the card");
final CardData card5 = CardData("images/image1.jpg", "nikon", 34499, "some quick exmple text to build on the card");

final List<CardData> cards = [card1, card2, card3, card4, card5];

class MycardData extends StatelessWidget {
  const MycardData({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("gjggh"),
        ...cards.map((card) {
          return Mycard(data: card);
        }),
      ],
    );
  }
}

void main(List<String> args) {
  print("hello");
  runApp(MaterialApp(home: Scaffold(body: MycardData())));

  for (var card in cards) {
    print(card.name);
  }
  // convert data to ui
  final s = cards.map((card) {
    return card.name;
  });
  print(s);
}

class Mycard extends StatelessWidget {
  final CardData data;
  const Mycard({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.all(8.0), child: Image.asset(data.image, height: 100, width: 100)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(data.name), Text("34499"), Text(data.desc)],
          ),
        ],
      ),
    );
  }
}
