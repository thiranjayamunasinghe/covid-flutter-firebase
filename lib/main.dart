import 'package:covid/home.dart';
import 'package:flutter/material.dart';
import './navigationMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // appBar: AppBar(
          //   title: Text('Loaned Money Tracker'),
          //   backgroundColor: Colors.transparent,
          // ),
          backgroundColor: Color(0xFF4dd0e1),
          body: Home(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('floating');
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.deepOrange,
          ),
        ));
  }
}
