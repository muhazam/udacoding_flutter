import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_week2/screen/loginScreen.dart';
import 'package:task_week2/screen/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var username = preferences.getString('username');
  var password = preferences.getString('password');
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: username == null && password == null ? LoginScreen() : HomePage(),
    ),
  );
}
