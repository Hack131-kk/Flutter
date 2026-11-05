import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: Shop()));
class Shop extends StatefulWidget {
  State<Shop> createState() => _ShopState();
}
class _ShopState extends State<Shop> {
  var q = '';
  var fruits = ['🍎 Apple','🍌 Banana','🥭 Mango','🍊 Orange','🍇 Grapes','🍉WaterMelon'];
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Fruit Shop'), backgroundColor: Colors.green),
    body: Column(children: [
      TextField(onChanged: (v) => setState(() => q = v),
        decoration: InputDecoration(hintText: 'Search')),
      Expanded(child: ListView(children: fruits.where((f) =>
        f.toLowerCase().contains(q.toLowerCase())).map((f) =>
        Card(color: Colors.orange.shade100, child: ListTile(title: Text(f)))).toList())),
    ]),
  );
}