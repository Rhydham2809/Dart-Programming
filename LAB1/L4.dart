import 'dart:io';

void main(List<String> args) {
  // print("PLease enter the marks of subject 1");
  // int sub1 = int.parse(stdin.readLineSync()!);
  // print("PLease enter the marks of subject 2");
  // int sub2 = int.parse(stdin.readLineSync()!);
  // print("PLease enter the marks of subject 3");
  // int sub3 = int.parse(stdin.readLineSync()!);
  // print("PLease enter the marks of subject 4");
  // int sub4 = int.parse(stdin.readLineSync()!);
  // print("PLease enter the marks of subject 5");
  // int sub5 = int.parse(stdin.readLineSync()!);

  // double answer;

  // print("Answer = ${answer = (sub1 + sub2 + sub3 + sub4 + sub5) / 5}");

  List<int> subject = [];

  double result = 0;

  for (int i = 0; i < 5; i++) {
    print("PLease enter the marks of subject subject ${i + 1}");
    subject.add(int.parse(stdin.readLineSync()!));
    result = result + subject[i];
  }

  print("Result = ${result / 5}");
}
