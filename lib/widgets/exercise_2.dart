import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab1/widgets/buttons/calculation_button.dart';
import 'package:lab1/widgets/result_box.dart';

class Exercise2 extends StatefulWidget {
  const Exercise2({
    Key? key,
  }) : super(key: key);

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  //ініціалізуємо контролери для текстових полів
  TextEditingController yController = TextEditingController();
  TextEditingController aController = TextEditingController();
  TextEditingController bController = TextEditingController();
  TextEditingController cController = TextEditingController();
  TextEditingController dController = TextEditingController();

  var ex1Result = 0.0;
  List<double> ex2Result = [];
  var ex3Result = 0.0;

  // Завдання 2.1
  // у=x^4
  ex_2_1(double y) {
    setState(() {
      ex1Result = pow(y, 1 / 4) as double;
    });
  }

  // Завдання 2.2
  // у=a*x^2 + bx + c
  ex_2_2(double a, double b, double c, double y) {
    c = c - y;
    var d = b * b - 4 * a * c;
    setState(() {
      if (d > 0) {
        ex2Result = [
          ((-b + sqrt(pow(b, 2) - 4 * a * c)) / (2 * a)),
          ((-b - sqrt(pow(b, 2) - 4 * a * c)) / (2 * a))
        ];
      } else if (d == 0) {
        ex2Result = [-b / (2 * a)];
      } else if (d < 0) {
        ex2Result = [double.nan];
      }
    });
  }

  // Завдання 2.3
  // y=ax+c
  ex_2_3(double y, double a, double c) {
    setState(() {
      ex3Result = (y - c) / a;
    });
  }

  String getResQuadraticEquation() {
    if (ex2Result.length == 1) {
      return 'x = ${ex2Result[0].toStringAsFixed(3)}';
    } else if (ex2Result.length == 2) {
      return 'x1 = ${ex2Result[0].toStringAsFixed(3)}, x2 = ${ex2Result[1].toStringAsFixed(3)}';
    } else {
      return 'Коренів немає';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Завдання №2',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          'Введіть дані для подальших обчислень: ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: TextFormField(
                controller: yController,
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
                  hintText: 'y',
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
              width: 10,
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
              width: 10,
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
              width: 10,
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
              width: 10,
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
              width: 10,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        CalculationButton(
          onTap: () {
            ex_2_1(double.parse(yController.text));
            ex_2_2(
              double.parse(aController.text),
              double.parse(bController.text),
              double.parse(cController.text),
              double.parse(yController.text),
            );
            ex_2_3(double.parse(yController.text),
                double.parse(aController.text), double.parse(cController.text));
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
                '1. Результат(у=x^4): ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              ResultBox(result: ex1Result.toStringAsFixed(3)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2. Результат:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '(у=a*x^2 + bx + c)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              ResultBox(result: getResQuadraticEquation()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: Row(
            children: [
              Text(
                '3. Результат(y=ax+c): ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              ResultBox(result: ex3Result.toStringAsFixed(3)),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
