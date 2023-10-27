import 'Student.dart';

class StudentGroup {
  static int totalEnergy = 500;
  static List<Student> studentList = [];

  static study(hours, studentName) {
    totalEnergy -= totalEnergy * 10;
  }

  static takeBreak(hours, studentName) {}

  static checkEnergy() {
    print(totalEnergy);
  }
}
