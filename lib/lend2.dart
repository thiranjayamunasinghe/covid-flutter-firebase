import 'package:covid/lend.dart';
import 'package:covid/login.dart';
import 'package:covid/owe.dart';
import 'package:covid/register.dart';
import 'package:covid/test.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Lend2 extends StatefulWidget {
  Lend2State createState() {
    return Lend2State();
  }
}

class Lend2State extends State<Lend2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4dd0e1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () => {Navigator.pop(context)},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                Text(
                  'Lended',
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
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height,
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
                          child: ListView(
                            primary: false,
                            children: <Widget>[],
                          ))),
                ],
              )),
        ],
      ),
    );
  }
}
