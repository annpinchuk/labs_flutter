import 'package:flutter/material.dart';
import 'package:lab1/tasks.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  final _formKey = GlobalKey<FormState>();

  //ініціалізуємо контролери для текстових полів
  TextEditingController task2Controller = TextEditingController();

  Tasks tasks = Tasks();

  int task2Result = 0;

  setTask2Result() {
    setState(() {
      task2Result = tasks.task2(task2Controller.text);
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
          'Введіть стрічку для перевірки кількості чисел:',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextFormField(
              controller: task2Controller,
              autocorrect: false,
              cursorColor: const Color(0xff181B19),
              style: TextStyle(
                color: Color(0xff181B19),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                hintText: 'str',
                hintStyle: const TextStyle(
                  color: Color(0xFFA5A5A5),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                filled: true,
                fillColor: const Color(0xffF2F3F2),
                contentPadding: EdgeInsets.only(top: 30, left: 20, right: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: setTask2Result,
          child: const Text('Перевірити'),
        ),
        SizedBox(
          height: 20,
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
