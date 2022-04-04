import 'package:lab1/group.dart';
import 'package:lab1/student.dart';

void main() {
  Student student1 = Student(name: 'Анна', surname: 'Пінчук', age: 20);
  Student student2 = Student(name: 'Олександр', surname: 'Олександров', age: 21);
  Student student3 = Student(name: 'Руслана', surname: 'Петя', age: 22);

  print(student1.toString());

  Group group = Group(name: 'ТІ-81');

  group.addStudent(student1);
  group.addStudent(student2);
  group.addStudent(student3);

  print(group.toString());

  group.printStudentsList();

  student3.publicMethod();
}

