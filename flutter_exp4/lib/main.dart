import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Car()));

class Car extends StatefulWidget {
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  final km = TextEditingController(), fuel = TextEditingController();
  double mileage = 0;

  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Mileage Calculator'), backgroundColor: Colors.blue),
    body: Column(children: [
      TextField(controller: km, decoration: InputDecoration(labelText: 'Distance (KM)')),
      TextField(controller: fuel, decoration: InputDecoration(labelText: 'Fuel (Litres)')),
      ElevatedButton(onPressed: () => setState(() {
        double k = double.tryParse(km.text) ?? 0;
        double f = double.tryParse(fuel.text) ?? 0;
        mileage = f > 0 ? k / f : 0;
      }), child: Text('Calculate')),
      Text('Mileage: ${mileage.toStringAsFixed(2)} KM/L'),
    ]),
  );
}