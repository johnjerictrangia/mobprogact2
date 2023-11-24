import 'package:flutter/material.dart';

void main() {
  runApp(BasicApp());
}

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  List names = ['Jurivel', 'Jarelvie', 'Jericah'];

  int counting(str) {
    int countLetter = str.length;
    return countLetter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sisters'),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.account_balance),
      ),
      body: ListView(
        children: [
          for (String name in names)
            ListTile(
              leading: Icon(Icons.add_business_rounded),
              title: Text(name),
              subtitle: Text(counting(name).toString() + ' ' + "Letter(s)"),
            ),
        ],
      ),
    );
  }
}
