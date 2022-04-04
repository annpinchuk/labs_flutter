import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab1/widgets/buttons/calculation_button.dart';
import 'package:lab1/widgets/result_box.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({
    Key? key,
  }) : super(key: key);

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  //ініціалізуємо контролери для текстових полів
  TextEditingController xController = TextEditingController();
  TextEditingController aController = TextEditingController();
  TextEditingController bController = TextEditingController();
  TextEditingController cController = TextEditingController();
  TextEditingController dController = TextEditingController();

  double ex1Result = 0.0;
  double ex2Result = 0.0;
  double ex3Result = 0.0;

  // Завдання 1.1
  // у=МАХ(a, b, c, d)
  void exercise1_1(
    double x,
    double a,
    double b,
    double c,
    double d,
  ) {
    setState(() {
      ex1Result = [x, a, b, c, d].reduce(max);
    });
  }

  // Завдання 1.2
  // у=x^4
  void exercise1_2(
    num x,
  ) {
    setState(() {
      ex2Result = pow(x, 4) as double;
    });
  }

  // Завдання 1.3
  // у=a*x^2 + bx + c
  void exercise1_3(
    double x,
    double a,
    double b,
    double c,
  ) {
    setState(() {
      ex3Result = a * pow(x, 2) + b * x + c;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Завдання №1',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          'Введіть необхідні параметри:',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 1,
              child: TextFormField(
                controller: xController,
                keyboardType: TextInputType.number,
                autocorrect: false,
                cursorColor: Color(0xff181B19),
                style: TextStyle(
                  color: Color(0xff181B19),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  isDense: true,
                  fillColor: Color(0xffD6E0FB),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'x',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 1,
              child: TextFormField(
                controller: aController,
                autocorrect: false,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-9.-]')),
                ],
                cursorColor: Color(0xff181B19),
                style: TextStyle(
                  color: Color(0xff181B19),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  isDense: true,
                  fillColor: Color(0xffD6E0FB),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'a',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 1,
              child: TextFormField(
                controller: bController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-9.-]')),
                ],
                autocorrect: false,
                cursorColor: Color(0xff181B19),
                style: TextStyle(
                  color: Color(0xff181B19),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  isDense: true,
                  fillColor: Color(0xffD6E0FB),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'b',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 1,
              child: TextFormField(
                controller: cController,
                autocorrect: false,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-9.-]')),
                ],
                cursorColor: Color(0xff181B19),
                style: TextStyle(
                  color: Color(0xff181B19),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  isDense: true,
                  fillColor: Color(0xffD6E0FB),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'c',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 1,
              child: TextFormField(
                controller: dController,
                autocorrect: false,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-9.-]')),
                ],
                cursorColor: Color(0xff181B19),
                style: TextStyle(
                  color: Color(0xff181B19),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  isDense: true,
                  fillColor: Color(0xffD6E0FB),
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'd',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        CalculationButton(
          onTap: () {
            exercise1_1(
                double.parse(xController.text),
                double.parse(aController.text),
                double.parse(bController.text),
                double.parse(cController.text),
                double.parse(dController.text));
            exercise1_2(double.parse(xController.text));
            exercise1_3(
              double.parse(xController.text),
              double.parse(aController.text),
              double.parse(bController.text),
              double.parse(cController.text),
            );
          },
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: Row(
            children: [
              Text(
                '1. Результат(у=МАХ(a, b, c, d)): ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              ResultBox(result: 'y = $ex1Result'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: Row(
            children: [
              Text(
                '2. Результат(у=x^4): ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              ResultBox(result: 'y = $ex2Result'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: Row(
            children: [
              Text(
                '3. Результат(у=a*x^2 + bx + c): ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              ResultBox(result: 'y = $ex3Result'),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
