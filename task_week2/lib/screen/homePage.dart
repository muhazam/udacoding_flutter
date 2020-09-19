import 'package:flutter/material.dart';
import 'package:task_week2/screen/LoginScreen.dart';

class HomePage extends StatefulWidget {
  final String username;
  final String password;

  const HomePage({Key key, this.username, this.password}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ListView(
          children: [
            Text('Haii : ${widget.username}'),
            Text('Passwordmu : ' + widget.password),
            RaisedButton(
              child: Text('Log Out'),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                  (Route<dynamic> route) => false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
