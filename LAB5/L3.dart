// Write a dart code to create a Circle class with area() and perimeter() function to find area and
// perimeter of the circle

import 'dart:io';
import 'dart:math';

class Circle {
  void area(int r) {
    print("The area of circle is : ${(pi * r * r)}");
  }

  void perimeter(int r) {
    print("The perimeter of circlr id : ${2 * pi * r}");
  }
}

void main(List<String> args) {
  Circle()
    ..area(4)
    ..perimeter(5);
}
