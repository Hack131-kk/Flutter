import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: Text('Fruit Shop'), backgroundColor: Colors.green),
  body: ListView(children: [
    for (var f in ['🍎 Apple','🍌 Banana','🥭 Mango','🍊 Orange',
      '🍇 Grapes','🍓 Strawberry','🍍 Pineapple','🍉 Watermelon',
      '🥝 Kiwi','🍒 Cherry'])
      FruitCard(f),
  ]),
)));
class FruitCard extends StatelessWidget {
  final String fruit;
  FruitCard(this.fruit);
  @override
  Widget build(BuildContext c) => Card(
    color: Colors.orange.shade100,
    child: Container(padding: EdgeInsets.all(12),
      child: Row(children: [
        Text(fruit, style: TextStyle(fontSize: 22)),
        Spacer(),
        Icon(Icons.favorite, color: Colors.red),
      ]),
    ),
  );
}
