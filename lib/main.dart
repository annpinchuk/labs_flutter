import 'package:flutter/material.dart';
import 'package:lab1/widgets/task1.dart';
import 'package:lab1/widgets/task2.dart';
import 'package:lab1/widgets/task3.dart';
import 'package:lab1/widgets/task4.dart';
import 'package:lab1/widgets/task5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 12',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Лабораторна робота №12',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Пінчук Анни, ТІ-81',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Task1(),
                Task2(),
                Task3(),
                Task4(),
                Task5(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
