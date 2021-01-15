import 'package:flood_relief/screen/Resuelocations.dart';
import 'package:flood_relief/screen/donordata.dart';
import 'package:flood_relief/screen/victimdata.dart';
import 'package:flutter/material.dart';
import '../login.dart';

class AdmindataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Row(
          children: <Widget>[
            Image.asset(
              'lib/img/floodimg.png',
              fit: BoxFit.cover,
              height: 50,
            ),
            SizedBox(
              width: 1,
            ),
            Text(
              'FLOOD APP',
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 35),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
              child: FlatButton(
            color: Colors.cyanAccent,
            onPressed: () {
              AuthProvider().logOut();
              Navigator.pop(context);
            },
            child: Text(
              'Logout',
              style: TextStyle(fontSize: 15),
            ),
          ))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.redAccent[100], Colors.amberAccent[200]],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    'ADMIN LOG IN',
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: 70,
                    child: RaisedButton(
                      color: Colors.lightBlueAccent,
                      textColor: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Donordatapage()),
                        );
                      },
                      child: Text(
                        'Donor Information',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 70,
                    child: RaisedButton(
                      color: Colors.lightBlueAccent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Victimdatapage()),
                        );
                      },
                      child: Text(
                        'Victim Information',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 70,
                    child: RaisedButton(
                      color: Colors.lightBlueAccent,
                      textColor: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Resuelocations()),
                        );
                      },
                      child: Text(
                        'Rescue Locations',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
