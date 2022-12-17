import 'dart:io';

void main(List<String> args) {
  List<int> marks = [];
  int result = 0;
  bool flag = true;

  for (int i = 0; i < 5; i++) {
    stdout.write("Please enter the marks of subject ${i + 1} : ");
    marks.add(int.parse(stdin.readLineSync()!));
    result = result + marks[i];
    if (marks[i] > 35) {
      flag = false;
    }
    ;
  }

  result = (result ~/ 5).toInt();
  if (flag == false) print("You failed in a particlar subject");
  if (result < 35)
    print("Fail");
  else if (result > 35 && result < 45)
    print("Pass class");
  else if (result >= 45 && result < 60)
    print("Second Class");
  else if (result >= 60 && result < 70)
    print("Fist Class");
  else
    print("Distinction");
}
