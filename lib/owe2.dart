import 'package:covid/lend.dart';
import 'package:covid/login.dart';
import 'package:covid/owe.dart';
import 'package:covid/register.dart';
import 'package:covid/test.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Owe2 extends StatefulWidget {
  Owe2State createState() {
    return Owe2State();
  }
}

class Owe2State extends State<Owe2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4dd0e1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                ),

                Text(
                  'Owed',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Money',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 25),
                ),
                //   myBTN(context, 'Money You Lend to Friends', Lend()),
                //   // Flexible(child: Padding(padding: EdgeInsets.all(8.0))),
                //   Divider(
                //     color: Colors.brown[200],
                //     height: 50,
                //     thickness: 10,
                //     endIndent: 100,
                //     indent: 100,
                //   ),
                //   myBTN(context, 'Money You Owe to Friends', Owe()),
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75))),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 90),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 300,
                          child: ListView(primary: true, children: <Widget>[
                            RaisedButton(
                              onPressed: () {},
                              child: Text('data'),
                            )
                          ]))),
                ],
              )),
        ],
      ),
    );
  }
}
