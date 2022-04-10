import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab1/tasks.dart';

class Task5 extends StatefulWidget {
  const Task5({Key? key}) : super(key: key);

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  //ініціалізуємо контролери для текстових полів
  TextEditingController nController = TextEditingController();

  Tasks tasks = Tasks();

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
          'Введіть N>3 для подальших обчислень:',
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
            controller: nController,
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
              hintText: 'N',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  tasks.task5(
                    int.parse(nController.text),
                  );
                });
              },
              child: const Text('Обчислити'),
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
                  child: Text(tasks.result),
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
