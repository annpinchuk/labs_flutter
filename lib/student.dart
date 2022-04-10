class Student{

  //Завдання 1
  String name;
  String surname;
  int age;

  //Завдання 2
  static String department = 'АПЕПС';

  Student({required this.name, required this.surname, required this.age});

  //Завдання 3
  void _privateMethod() {
    print("Ви викликали private метод");
  }

  //Завдання 3
  void publicMethod() {
    print("Ви викликали public метод");
    _privateMethod();
  }

  //Завдання 5
  @override
  String toString() {
    return 'Студент $name $surname, $age років \nКафедра: $department\n';
  }
}