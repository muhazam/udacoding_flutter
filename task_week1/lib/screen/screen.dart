import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: ListView(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Container(
                // alignment: Alignment.center,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "TASK WEEK1 UDACODING",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Silahkan Login",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(18.0),
                child: TextField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(18, 5, 18, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                textColor: Colors.cyan,
              ),
              Container(
                height: 45,
                padding: EdgeInsets.fromLTRB(120, 7, 120, 0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.cyan)),
                  onPressed: () {
                    print(userNameController.text);
                    print(passwordController.text);
                  },
                  textColor: Colors.cyan,
                  child: Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum Punya Akun?"),
                    FlatButton(
                      onPressed: () {},
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
      ),
    );
  }
}
