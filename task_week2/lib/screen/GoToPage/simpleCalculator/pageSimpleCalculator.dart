import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  Widget CalculatorButton(String ButtonVal) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: Offset(0.0, 3.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-2.0, -3.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: MaterialButton(
          onPressed: () => PressButton(ButtonVal),
          padding: EdgeInsets.all(20),
          child: Text(
            ButtonVal,
            style: TextStyle(fontSize: 22.0),
          ),
        ),
      ),
    );
  }

  String operand = '';
  String _outcalc = '0';
  String output = '0';
  double num1 = 0.0;
  double num2 = 0.0;

  PressButton(String val) {
    print(val);
    if (val == "C") {
      _outcalc = '0';
      num1 = 0;
      num2 = 0;
      operand = '';
    } else if (val == "-" || val == "+" || val == "/" || val == "*") {
      num1 = double.parse(output);
      operand = val;
      _outcalc = '0';
      output = output + val;
    } else if (val == ".") {
      if (_outcalc.contains(".")) {
        return;
      } else {
        _outcalc = _outcalc + val;
      }
    } else if (val == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _outcalc = (num1 + num2).toString();
      }

      if (operand == "-") {
        _outcalc = (num1 - num2).toString();
      }

      if (operand == "*") {
        _outcalc = (num1 * num2).toString();
      }

      if (operand == "/") {
        _outcalc = (num1 / num2).toString();
      }
      num1 = 0.0;
      num2 = 0.0;
    } else {
      _outcalc = _outcalc + val;
    }

    setState(() {
      output = double.parse(_outcalc).toStringAsFixed(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 70.0),
              child: Text(
                output,
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            Column(
              children: [
                Row(
                  children: [
                    CalculatorButton("."),
                    CalculatorButton("C"),
                    CalculatorButton("Del"),
                    CalculatorButton("*"),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton("7"),
                    CalculatorButton("8"),
                    CalculatorButton("9"),
                    CalculatorButton("/"),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton("4"),
                    CalculatorButton("5"),
                    CalculatorButton("6"),
                    CalculatorButton("-"),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton("1"),
                    CalculatorButton("2"),
                    CalculatorButton("3"),
                    CalculatorButton("+"),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton("0"),
                    CalculatorButton("="),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
