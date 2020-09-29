import 'dart:math';

import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int body_height;
  final int body_weight;
  const BmiResult({Key key, this.body_height, this.body_weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rumusBmi = body_weight / pow(body_height / 100, 2);

    String conditionalBmi;
    if (rumusBmi >= 35) {
      conditionalBmi = 'Danger!! Kamu Obesitas Ekstrim';
    } else if (rumusBmi >= 29.9) {
      conditionalBmi = 'kamu Obesitas, rajin-rajin olahraga';
    } else if (rumusBmi >= 24.9) {
      conditionalBmi = 'Kamu kelebihan berat badan';
    } else if (rumusBmi >= 18.5) {
      conditionalBmi = 'Berat Badanmu Normal';
    } else {
      conditionalBmi = 'Berat badanmu kurang';
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Result BMI',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              conditionalBmi,
            ),
            Text(rumusBmi.toStringAsFixed(2))
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.maxFinite,
        height: 50,
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.cyan,
          child: Text(
            'Back',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
