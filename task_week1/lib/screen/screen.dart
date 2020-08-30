import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Text("Task week1 Udacoding", style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.w500,
                fontSize: 30.0
              ),),
            )
          ],
        ),
      ),
    );
  }
}
