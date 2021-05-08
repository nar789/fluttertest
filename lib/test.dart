import 'package:flutter/material.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: Text("This is test app"),
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () => _increment(),
              leading: Icon(Icons.home),
              title: Text("hi yo ${this._count}"),
              subtitle: Text('nice'),
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
