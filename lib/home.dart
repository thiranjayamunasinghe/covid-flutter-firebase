import 'package:covid/lend2.dart';
import 'package:covid/owe2.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 200.0,
              ),

              Text(
                'Loaned Money',
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
                'Tracker',
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75))),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 90),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300,
                        child: ListView(
                          primary: true,
                          children: <Widget>[
                            myBTN(
                                context, 'Money You Lend to Friends', Lend2()),
                            Divider(
                              color: Colors.brown[200],
                              height: 50,
                              thickness: 5,
                              endIndent: 50,
                              indent: 50,
                            ),
                            myBTN(context, 'Money You Owe to Friends', Owe2()),
                          ],
                        ))),
              ],
            )),
      ],
    );
  }
}

Widget myBTN(context, btnTtext, route) {
  return Flexible(
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      // borderRadius: BorderRadius.all(Radius.circular(30.0)),

      child: SizedBox(
        child: RaisedButton(
          color: Colors.lightBlue[100],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => route),
            );
          },
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(8)),
              Icon(
                LineAwesomeIcons.balance_scale,
                color: Colors.deepOrange,
                size: 40.0,
              ),
              Padding(padding: EdgeInsets.all(8)),
              Text(
                btnTtext,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.brown),
              ),
            ],
          ),
        ),
        height: 150,
        width: double.infinity,
      ),
    ),
  );
}
