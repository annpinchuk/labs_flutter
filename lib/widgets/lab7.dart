import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab1/widgets/tasks.dart';

import 'buttons/calculation_button.dart';

class Lab7 extends StatefulWidget {
  const Lab7({Key? key}) : super(key: key);

  @override
  State<Lab7> createState() => _Lab7State();
}

class _Lab7State extends State<Lab7> {
  //ініціалізуємо контролери для текстових полів
  TextEditingController task1Controller = TextEditingController();
  TextEditingController task2Controller = TextEditingController();
  TextEditingController task3Controller = TextEditingController();

  List<int> task1Result = [];
  var task2Result = 0;
  var task3Result = 0;

  Tasks tasks = Tasks();

  setTask1Result() {
    setState(() {
      task1Result = tasks.saveResultTask1(int.parse(task1Controller.text));
    });
  }

  setTask2Result() {
    setState(() {
      task2Result = tasks.task2(int.parse(task2Controller.text));
    });
  }

  setTask3Result() {
    setState(() {
      task3Result = tasks.task3(int.parse(task3Controller.text));
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
          'Введіть дані для подальших обчислень: ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 100,
          height: 50,
          child: TextFormField(
            controller: task1Controller,
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
              hintText: 'n',
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
        CalculationButton(onTap: setTask1Result),
        SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Center(
              child: Text(
                'Результат: ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xffD6E0FB),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: task1Result.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text('$index - ${task1Result[index]}');
                  }),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
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
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 100,
          height: 50,
          child: TextFormField(
            controller: task2Controller,
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
              hintText: 'n',
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
        CalculationButton(onTap: setTask2Result),
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
              child: Text('$task2Result'),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Завдання №3',
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
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 100,
          height: 50,
          child: TextFormField(
            controller: task3Controller,
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
              hintText: 'n',
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
        CalculationButton(onTap: setTask3Result),
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
              child: Text('$task3Result'),
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
