import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab1/tasks.dart';

class Task4 extends StatefulWidget {
  const Task4({Key? key}) : super(key: key);

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  //ініціалізуємо контролери для текстових полів
  TextEditingController aController = TextEditingController();
  TextEditingController bController = TextEditingController();

  Tasks tasks = Tasks();

  double task4Result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Завдання №4',
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        Text(
          'Введіть два числа та оберіть дію: ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: TextFormField(
                controller: aController,
                autocorrect: false,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
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
            SizedBox(
              width: 50,
              height: 50,
              child: TextFormField(
                controller: bController,
                autocorrect: false,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
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
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  task4Result = tasks.task4(
                    0,
                    double.parse(aController.text),
                    double.parse(bController.text),
                  );
                });
              },
              child: const Text('+'),
            ),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  task4Result = tasks.task4(
                    1,
                    double.parse(aController.text),
                    double.parse(bController.text),
                  );
                });
              },
              child: const Text('-'),
            ),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  task4Result = tasks.task4(
                    2,
                    double.parse(aController.text),
                    double.parse(bController.text),
                  );
                });
              },
              child: const Text('*'),
            ),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  task4Result = tasks.task4(
                    3,
                    double.parse(aController.text),
                    double.parse(bController.text),
                  );
                });
              },
              child: const Text('/'),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Результат: ',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xffD6E0FB),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: Text('$task4Result'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
