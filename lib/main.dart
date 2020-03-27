import 'package:flutter/material.dart';
import './navigationMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Covid'),
            backgroundColor: Colors.red,
          ),
          body: Center(child: NavigationMenu()),
        ));
  }
}
