import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  RegisterState createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  String _email, _password, _contactNo, __cPassword;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
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
                      autofocus: true,
                      onSaved: (input) => _email = input,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      onSaved: (input) => _contactNo = input,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Contact No.',
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      onSaved: (input) => _password = input,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      onSaved: (input) => __cPassword = input,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: () => signUp(),
                      child: new Text('Register'),
                      disabledColor: Colors.grey,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Future<void> signUp() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();

      try {
        (await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _email, password: _password));
        // user.sendEmailVerification();
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => MyApp()));
        Navigator.pop(context);
      } catch (e) {
        print(e.message);
        Navigator.pop(context, e.message);
      }
    }
  }
}
