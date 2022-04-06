import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab1/tasks.dart';

class Task3 extends StatefulWidget {
  const Task3({Key? key}) : super(key: key);

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  //ініціалізуємо контролери для текстових полів
  TextEditingController task3Controller = TextEditingController();

  Tasks tasks = Tasks();

  String? task3Result;

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
          'Завдання №3',
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
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
        ElevatedButton(
          onPressed: setTask3Result,
          child: const Text('Отримати день тижня'),
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
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xffD6E0FB),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Text('Наступний день: $task3Result'),
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
