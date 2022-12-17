import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter your weight in pound : ");
  int wei = int.parse(stdin.readLineSync()!);
  stdout.write("Please enter your weight in inches : ");
  int hei = int.parse(stdin.readLineSync()!);

  print("Your BMI = ${(hei * hei) * 0.256 / wei * 0.453}");
}
