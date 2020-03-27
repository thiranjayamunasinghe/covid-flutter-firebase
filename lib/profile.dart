import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key, this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('users')
            .document(user.uid)
            .snapshots(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            default:
              return Column(
                children: <Widget>[
                  Text(snapshot.data['name']),
                  Text(snapshot.data['age']),
                  Text(snapshot.data['role']),
                ],
              );
          }
        },
      ),
    );
  }
}
