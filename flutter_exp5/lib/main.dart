import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Home(),
  routes: {'/result': (c) => Result()},
));
class Home extends StatelessWidget {
  final name = TextEditingController(), mark = TextEditingController();
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Marks Entry')),
    body: Column(children: [
      TextField(controller: name, decoration: InputDecoration(labelText: 'Name')),
      TextField(controller: mark, decoration: InputDecoration(labelText: 'Marks')),
      ElevatedButton(onPressed: () => Navigator.pushNamed(c, '/result',
        arguments: [name.text, mark.text]), child: Text('Submit')),
    ]),
  );
}
class Result extends StatelessWidget {
  Widget build(BuildContext c) {
    var data = ModalRoute.of(c)!.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(title: Text('Student Result')),
      body: Center(child: Text('${data[0]}\nMarks: ${data[1]}',
        style: TextStyle(fontSize: 25, color: Colors.green))),
    );
  }
}