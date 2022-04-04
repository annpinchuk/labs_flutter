import 'package:lab1/student.dart';

class Group {
  String name;
  List<Student> group = [];

  Group({
    required this.name,
  });

  void addStudent(Student student) {
    group.add(student);
  }

  void printStudentsList() {
    for (int i = 0; i < group.length; i++) {
      print(group[i].toString());
    }
  }

  @override
  String toString() {
    return 'Група $name\n';
  }
}
