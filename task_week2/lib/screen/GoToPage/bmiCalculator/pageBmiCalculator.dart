import 'package:flutter/material.dart';
import 'package:task_week2/screen/GoToPage/bmiCalculator/resultBmi.dart';

class BmiInput extends StatefulWidget {
  @override
  _BmiInputState createState() => _BmiInputState();
}

class _BmiInputState extends State<BmiInput> {
  int height = 0;
  int weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Hitung BMI",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 3,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: 'Height',
                suffix: Text('cm'),
                filled: true,
                icon: Icon(Icons.trending_up),
              ),
              onChanged: (text) {
                setState(() {
                  height = int.parse(text);
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 3,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: 'Weight',
                suffix: Text('cm'),
                filled: true,
                icon: Icon(Icons.line_weight),
              ),
              onChanged: (text) {
                setState(() {
                  weight = int.parse(text);
                });
              },
            ),
            SizedBox(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      child: Text('Hitung'),
                      color: Colors.cyan,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BmiResult(
                              body_height: height,
                              body_weight: weight,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
