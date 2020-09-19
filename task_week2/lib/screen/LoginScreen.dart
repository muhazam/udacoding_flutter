import 'package:flutter/material.dart';
import 'package:task_week2/screen/homePage.dart';
import 'package:task_week2/screen/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String username;
  String password;

  final _key = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Form(
        key: _key,
        child: Padding(
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
                  "WEEK2 UDACODING",
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
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Input Username';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      username = value;
                    },
                    key: Key('username'),
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
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Input Password';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      password = value;
                    },
                    key: Key('password'),
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
                child: MaterialButton(
                  color: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  ),
                  onPressed: () {
                    username = userNameController.text;
                    password = passwordController.text;

                    if (_key.currentState.validate()) {
                      _key.currentState.save();
                      print(username);
                      print(password);
                      if (username == 'admin') {
                        if (password == 'admin') {
                          SnackBar snackBar = SnackBar(
                            content: Text(
                              'Login Berhasil',
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.green,
                          );
                          scaffoldKey.currentState.showSnackBar(snackBar);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(
                                username: username,
                                password: password,
                              ),
                            ),
                          );
                        } else if (password != 'admin') {
                          SnackBar snackBar = SnackBar(
                            content: Text(
                              'invalid password',
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.deepOrange,
                          );
                          scaffoldKey.currentState.showSnackBar(snackBar);
                        }
                      } else if (username != 'admin') {
                        SnackBar snackBar = SnackBar(
                          content: Text(
                            'invalid username',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.deepOrange,
                        );
                        scaffoldKey.currentState.showSnackBar(snackBar);
                      }
                    } else {
                      SnackBar snackBar = SnackBar(
                        content: Text(
                          'Isi Username & Password!!',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.deepOrange,
                      );
                      scaffoldKey.currentState.showSnackBar(snackBar);
                    }
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
      ),
    );
  }
}
