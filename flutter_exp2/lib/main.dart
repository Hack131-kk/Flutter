import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: Text('My Shop'), backgroundColor: Colors.purple),
  body: Builder(builder: (c) => GridView.count(
    crossAxisCount: MediaQuery.of(c).size.width > 600 ? 4 : 2,
    children: ['👟 Shoes','⌚ Watch','🎒 Bag','📱 Phone','🎧 Headset',
      '💻 Laptop','👕 T-Shirt','🕶️ Glasses','📷 Camera','⌚ Smartwatch']
      .map((p) => Product(p)).toList(),
  )),
)));
class Product extends StatelessWidget {
  final String name;
  Product(this.name);
  @override
  Widget build(BuildContext c) => Card(color: Colors.purple.shade100,
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(name, style: TextStyle(fontSize: 20)),
      Text('₹999', style: TextStyle(color: Colors.green)),
      Icon(Icons.shopping_cart),
    ]));
}
