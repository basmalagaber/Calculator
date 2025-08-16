import 'package:flutter/material.dart';

import 'button_shape1.dart';
import 'button_shape2.dart';
import 'button_shape3.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 270,
                alignment: Alignment.centerLeft,
                child: Text(
                  result,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  ButtonShape1(
                    label: "AC",
                    backgroundColor: Color(0xff616161),
                    labelColor: Colors.white,
                    oncClick: onClearClick,
                  ),
                  ButtonShape1(
                    label: "x",
                    backgroundColor: Color(0xff616161),
                    oncClick: onDeleteClick,
                    labelColor: Colors.white,
                  ),
                  ButtonShape1(
                    label: "/",
                    labelColor: Colors.white,
                    oncClick: onOperatorClick,
                    backgroundColor: Color(0xff005DB2),
                  ),
                  ButtonShape1(
                    label: "*",
                    labelColor: Colors.white,
                    oncClick: onOperatorClick,
                    backgroundColor: Color(0xff005DB2),
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonShape1(
                    label: "7",
                    backgroundColor: Color(0xff303136),
                    oncClick: onNumClick,
                    labelColor: Color(0xff29A8FF),
                  ),
                  ButtonShape1(
                    label: "8",
                    labelColor: Color(0xff29A8FF),
                    oncClick: onNumClick,
                    backgroundColor: Color(0xff303136),
                  ),
                  ButtonShape1(
                    label: "9",
                    labelColor: Color(0xff29A8FF),
                    oncClick: onNumClick,
                    backgroundColor: Color(0xff303136),
                  ),
                  ButtonShape1(
                    label: "-",
                    labelColor: Colors.white,
                    oncClick: onOperatorClick,
                    backgroundColor: Color(0xff005DB2),
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonShape1(
                    label: "4",
                    backgroundColor: Color(0xff303136),
                    oncClick: onNumClick,
                    labelColor: Color(0xff29A8FF),
                  ),
                  ButtonShape1(
                    label: "5",
                    labelColor: Color(0xff29A8FF),
                    oncClick: onNumClick,
                    backgroundColor: Color(0xff303136),
                  ),
                  ButtonShape1(
                    label: "6",
                    labelColor: Color(0xff29A8FF),
                    backgroundColor: Color(0xff303136),
                    oncClick: onNumClick,
                  ),
                  ButtonShape2(
                    label: "+",
                    oncClick: onOperatorClick,
                    backgroundColor: Color(0xff005DB2),
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonShape1(
                    label: "1",
                    backgroundColor: Color(0xff303136),
                    labelColor: Color(0xff29A8FF),
                    oncClick: onNumClick,
                  ),
                  ButtonShape1(
                    label: "2",
                    labelColor: Color(0xff29A8FF),
                    backgroundColor: Color(0xff303136),
                    oncClick: onNumClick,
                  ),
                  ButtonShape1(
                    label: "3",
                    labelColor: Color(0xff29A8FF),
                    backgroundColor: Color(0xff303136),
                    oncClick: onNumClick,
                  ),
                  ButtonShape2(
                    label: "=",
                    backgroundColor: Color(0xff29A8FF),
                    oncClick: onEqualClick,
                  ),
                ],
              ),

              Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonShape3(label: "0", oncClick: onNumClick),
                  ButtonShape1(
                    label: ".",
                    backgroundColor: Color(0xff303136),
                    labelColor: Color(0xff29A8FF),
                    oncClick: onNumClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  onNumClick(label) {
    if (op == "=") {
      op = "";
      result = "";
      left = "";
    }
    result += label;
    setState(() {});
  }

  onClearClick(label) {
    result = "";
    setState(() {});
  }

  onDeleteClick(label) {
    if (result.isNotEmpty) {
      result = result.substring(0, result.length - 1);
    }
    setState(() {});
  }


  String calculate(String left, String op, String right) {
    double l = double.parse(left);
    double r = double.parse(right);
    if (op == "+") {
      double res = l + r;
      return res.toString();
    } else if (op == "-") {
      double res = l - r;
      return res.toString();
    } else if (op == "*") {
      double res = l * r;
      return res.toString();
    } else if (op == "/") {
      double res = l / r;
      return res.toString();
    } else {
      return "";
    }
  }

  String op = "";
  String left = "";
  String right = "";
  onOperatorClick(operator) {
    if (op.isEmpty) {
      left = result;
    } else {
      left = calculate(left, op, result);
    }
    result = "";
    op = operator;
    setState(() {});
  }

  onEqualClick(operator) {
    result = calculate(left, op, result);
    op = operator;
    setState(() {});
  }
}
