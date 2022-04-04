class Student{

  String name;
  String surname;
  int age;

  static String department = 'АПЕПС';

  Student({required this.name, required this.surname, required this.age});

  void _privateMethod() {
    print("Ви викликали private метод");
  }

  void publicMethod() {
    print("Ви викликали public метод");
    _privateMethod();
  }

  @override
  String toString() {
    return 'Студент $name $surname, $age років \nКафедра: $department\n';
  }
}