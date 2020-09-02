import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_week1/screen/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              // alignment: Alignment.center,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Text(
                "WEEK1 UDACODING",
                style: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Silahkan Login",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35, 18, 35, 18),
              child: Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.cyan),
                child: TextField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.cyan)),
                    labelText: 'User Name',
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35, 5, 35, 0),
              child: Theme(
                data: Theme.of(context).copyWith(
                    primaryColor:
                        Colors.cyan), // --> atur primary color menjadi cyan
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.cyan,
                      ),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 53,
              padding: EdgeInsets.fromLTRB(135, 7, 135, 0),
              child: RaisedButton(
                color: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23.0),
                ),
                onPressed: () {
                  print(userNameController.text);
                  print(passwordController.text);
                },
                textColor: Colors.cyan,
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya Akun?"),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    textColor: Colors.cyan,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
