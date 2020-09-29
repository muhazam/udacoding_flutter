import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_week2/screen/GoToPage/bmiCalculator/pageBmiCalculator.dart';
import 'package:task_week2/screen/GoToPage/pageProfile.dart';
import 'package:task_week2/screen/loginScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future logOut(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('username');
    preferences.remove('password');
    Fluttertoast.showToast(
        msg: "Logout Successful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _cardUserPage(),
            SizedBox(
              height: 10,
            ),
            _cardButtonBMI(),
            SizedBox(
              height: 10,
            ),
            _cardButtonSimpleCalculator(),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 9,
              splashColor: Colors.yellow.withAlpha(70),
              color: Colors.cyan,
              onPressed: () {
                logOut(context);
              },
              child: Text(
                "Log Out",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardButtonBMI() {
    return Container(
      width: 340,
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.cyan,
          elevation: 9,
          child: InkWell(
            splashColor: Colors.yellow.withAlpha(70),
            onTap: () => _navPageBMI(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text(
                    "BMI Calculator",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _cardButtonSimpleCalculator() {
    return Container(
      width: 340,
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.purple,
          elevation: 9,
          child: InkWell(
            splashColor: Colors.yellow.withAlpha(70),
            onTap: () {
              print('Card tapped.');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text(
                    "Simple Calculator",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navPageUser() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PageProfile()));
  }

  void _navPageBMI() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BmiInput()));
  }

  void _navPageSimpleCalculator() {}

  Widget _cardUserPage() {
    return Container(
      width: 340,
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.pinkAccent,
          elevation: 9,
          child: InkWell(
            splashColor: Colors.yellow.withAlpha(70),
            onTap: () => _navPageUser(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    "Page Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
