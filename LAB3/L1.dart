import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter lower limit : ");
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Please enter upper limit : ");
  int n2 = int.parse(stdin.readLineSync()!);

  for (int i = n1 + 1; i < n2; i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      print("  ${i}");
    }
  }
}
