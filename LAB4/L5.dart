// Write a dart code that calculates area of circle, triangle and square using method overloading.

import 'dart:io';

void main(List<String> args) {
  stdout.write(
      "Please enter the options for area : \n1.Circle \n2.Triangle \n3.Square \n");
  int n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case 1:
      stdout.write("Please enter raduis : ");
      double r = double.parse(stdin.readLineSync()!);
      print("The area of circle is ${area(raduis: r)}");
      break;
    case 2:
      stdout.write("Please enter base : ");
      double base = double.parse(stdin.readLineSync()!);
      stdout.write("Please enter height : ");
      double height = double.parse(stdin.readLineSync()!);
      print("The area of triangle is ${area(base: base, height: height)}");
      break;
    case 3:
      stdout.write("Please enter lenght : ");
      double lenght = double.parse(stdin.readLineSync()!);
      print("The area of square is ${area(lenght: lenght)}");
  }
}

double area({raduis, lenght, base, height}) {
  if (raduis != null)
    return (raduis * raduis * 3.14);
  else if (lenght != null)
    return (lenght * lenght);
  else
    return (0.5 * base * height);
}
