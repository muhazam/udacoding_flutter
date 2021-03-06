import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Container(
            // alignment: Alignment.center,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            child: Text(
              "REGISTER",
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
            padding: EdgeInsets.fromLTRB(35, 5, 35, 18),
            child: Theme(
              data: Theme.of(context).copyWith(primaryColor: Colors.cyan),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.cyan)),
                  labelText: 'Email',
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
                print(emailController.text);
                print(passwordController.text);
              },
              textColor: Colors.cyan,
              child: Text(
                'Sign Up',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah Punya Akun?"),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  textColor: Colors.cyan,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
