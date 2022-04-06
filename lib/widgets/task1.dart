import 'package:flutter/material.dart';
import 'package:lab1/tasks.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  final _formKey = GlobalKey<FormState>();

  //ініціалізуємо контролери для текстових полів
  TextEditingController task1Controller = TextEditingController();

  Tasks tasks = Tasks();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Завдання №1',
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        Text(
          'Введіть одну латинську літеру або цифру',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextFormField(
              maxLength: 1,
              validator: (value) => tasks.task1(value),
              controller: task1Controller,
              autocorrect: false,
              cursorColor: const Color(0xff181B19),
              style: TextStyle(
                color: Color(0xff181B19),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                hintText: 'Введіть символ',
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
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Введіть інший символ')),
              );
            }
          },
          child: const Text('Перевірити'),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
