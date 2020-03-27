import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './login.dart';
import './register.dart';
import './profile.dart';

class NavigationMenu extends StatefulWidget {
  NavigationMenuState createState() {
    return NavigationMenuState();
  }
}

class NavigationMenuState extends State<NavigationMenu> {
  FirebaseUser user;
  String currentText = 'Please Log In';
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
        ),
        Text(currentText),
        RaisedButton(
          color: Colors.red,
          onPressed: () => goToLogin(context),
          child: new Text('Login'),
          disabledColor: Colors.grey,
        ),
        RaisedButton(
          color: Colors.red,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Register()),
            );
          },
          child: new Text('Register'),
          disabledColor: Colors.grey,
        ),
        RaisedButton(
          color: Colors.red,
          onPressed: () => goToProfile(context),
          child: new Text('Profile'),
          disabledColor: Colors.grey,
        ),
      ],
    );
  }

  void goToLogin(context) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
    user = result;

    if (user != null) {
      setState(() {
        currentText = 'Hello ${user.email}';
      });
    }
  }

  void goToProfile(context) async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();

    if (user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile(user: user)),
      );
    }
  }
}
