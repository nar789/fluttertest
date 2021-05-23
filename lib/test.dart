import 'package:flutter/material.dart';
import 'package:flutter_app/models/person.dart';
import 'package:provider/provider.dart';

class TestView extends StatefulWidget {
  @override
  TestState createState() => TestState();
}

class TestState extends State {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final age = Provider.of<Person>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("This is test app"),
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () => [age.addingAge(10), _increment()],
              leading: Icon(Icons.home),
              title: Text("hi yo ${this._count}"),
              subtitle: Text('nice ${age.age}'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("5 min"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("asdfasd")
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("hi yo"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("hi yo"),
            )
          ],
        ));
  }
}
