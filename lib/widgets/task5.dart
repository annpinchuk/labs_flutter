import 'package:flutter/material.dart';
import 'package:lab1/tasks.dart';

class Task5 extends StatefulWidget {
  const Task5({Key? key}) : super(key: key);

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  final _formKey = GlobalKey<FormState>();

  //ініціалізуємо контролери для текстових полів
  TextEditingController task5Controller = TextEditingController();

  Tasks tasks = Tasks();

  String task5Result = '';

  setTask3Result() {
    setState(() {
      task5Result = tasks.task5(task5Controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Завдання №5',
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        Text(
          'Введіть стрічку:',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextFormField(
              controller: task5Controller,
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
          onPressed: setTask3Result,
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
                child: Text(task5Result),
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
