import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab1/tasks.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {

  //ініціалізуємо контролери для текстових полів
  TextEditingController task2Controller = TextEditingController();

  Tasks tasks = Tasks();

  String? task2Result;

  setTask2Result() {
    setState(() {
      task2Result = tasks.task2(int.parse(task2Controller.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Завдання №2',
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        Text(
          'Введіть цифру від 1 до 7:',
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
        ElevatedButton(
          onPressed: setTask2Result,
          child: const Text('Отримати день тижня'),
        ),
        // CalculationButton(onTap: setTask2Result),
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
              width: 150,
              decoration: BoxDecoration(
                color: Color(0xffD6E0FB),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 5,
                ),
                child: Text('$task2Result'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
