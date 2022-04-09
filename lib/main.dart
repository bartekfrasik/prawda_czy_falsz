// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prawda czy Fałsz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Wypowiedz pytanie i dowiedz się czy to prawda'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Sprawdź'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => SecondPage(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextBool();
    return Scaffold(
      appBar: AppBar(
        title: Text('Prawda czy Fałsz'),
        backgroundColor: result == true ? Colors.green : Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (result == true) Text('Prawda'),
            if (result == false) Text('kłamstwo'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Spróbuj ponownie'),
              style: ElevatedButton.styleFrom(
                  primary: result == true ? Colors.green : Colors.red),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
