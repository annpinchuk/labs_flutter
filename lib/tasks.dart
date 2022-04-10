enum Weekd {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

class Tasks {
  // Завдання 1
  //Написати программу, що робить перевірку, чи є значення символьної змінної,
  // що введена з клавіатури:
  // цифрою від 0 до 9;
  // малою латинською літерою;
  // латинською літерою (великою чи малою)
  String? task1(String? value) {
    RegExp regexSmallLatin = RegExp('[a-z]');
    RegExp regexBiglLatin = RegExp('[A-Z]');
    RegExp regexNumber = RegExp('[0-9]');
    if (value == null || value.isEmpty) {
      return 'Введіть символ';
    } else if (regexSmallLatin.hasMatch(value)) {
      return 'Введене значення є малою латинською літерою';
    } else if (regexBiglLatin.hasMatch(value)) {
      return 'Введене значення є великою латинською літерою';
    } else if (regexNumber.hasMatch(value)) {
      return 'Введене значення є цифрою';
    }
    return null;
  }

  // Завдання 2
  // У розкладі рейсів літаків дні тижня позначаються номерами від 1 до 7.
  // Припустимо, що в програмі дні тижня подаються enum типом Weekd. Написати
  // програму, що у відповідь на введення номера дня виводить текстове подання
  // дня тижня.
  task2(int n) {
    if (n > 0 && n <= 7) {
      return Weekd.values[n - 1].toString().split('.').last;
    } else {
      return 'Введено некоректне число';
    }
  }

  // Завдання 3
  // За понеділком іде вівторок тощо, а за неділею – понеділок. Написати функцію
  // обчислення за днем тижня (типу Weekd) наступного за ним дня.
  task3(int n) {
    return Weekd.values[n % 7].toString().split('.').last;
  }

  // Завдання 4
  // Написати &quot;найпростіший калькулятор, що отримує на вхід 2 числа і
  // операцію над ними після чого повертає результат обчислень.
  task4(int n, double a, double b) {
    switch (n) {
      case 0:
        return a + b;
      case 1:
        return a - b;
      case 2:
        return a * b;
      case 3:
        return a / b;
    }
  }

  String result = '';

  // Завдання 5
  // Написати процедуру обчислення за цілим N>3 таких натуральних A і B,
  // що 5A-2B=N, причому A+B мінімально.
  task5(int n) {
    if (n > 3) {
      for (int i = 0; i * 5 <= n; i++) {
        if ((n - (i * (-2))) % (-2) == 0) {
          result = "A =  $i  B = ${(n - (i * 5)) / (-2)} ";
          return;
        }
      }
      result = "Рішення немає";
      return;
    } else {
      result = "N<3";
      return;
    }
  }
}
