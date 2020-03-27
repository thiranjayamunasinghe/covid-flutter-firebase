import 'package:covid/profile.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './main.dart';

class Login extends StatefulWidget {
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Please type an email';
                      }
                      return null;
                    },
                    onSaved: (input) => _email = input,
                    autofocus: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (input) {
                      if (input.length < 6) {
                        return 'Your password neeeds to be atleast 6 characters';
                      }
                      return null;
                    },
                    onSaved: (input) => _password = input,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    color: Colors.red,
                    onPressed: () => signIn(),
                    child: new Text('Login'),
                    disabledColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();

      try {
        FirebaseUser user = (await FirebaseAuth.instance
                .signInWithEmailAndPassword(email: _email, password: _password))
            .user;

        print(user);
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => MyApp()));
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Profile(user: user)));
      } catch (e) {
        print(e.message);
      }
    }
  }
}
