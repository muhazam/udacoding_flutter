import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_week2/screen/LoginScreen.dart';
import 'package:task_week2/screen/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var username = preferences.getString('username');
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: username == null ? LoginScreen() : HomePage(),
    ),
  );
}
