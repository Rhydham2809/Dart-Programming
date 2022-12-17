// Define Time class with hour and minute as data member. Also define addition() method to add
// two-time objects
import 'dart:io';

class Time {
  int? Hour;
  int? Min;

  void getTime() {
    stdout.write("Please enter the hour : ");
    Hour = int.parse(stdin.readLineSync()!);
    stdout.write("Please enter the min : ");
    Min = int.parse(stdin.readLineSync()!);
  }

  void addition(Time t1, Time t2) {
    Time total = Time();
    total.Hour = t1.Hour! + t2.Hour!;
    total.Min = t1.Min! + t2.Min!;
    if (total.Min! >= 60) {
      total.Min = (total.Min! % 60);
      total.Hour = total.Hour! + (total.Min! / 60) as int;
    }
    print("${total.Hour} : ${total.Min}");
  }
}

void main(List<String> args) {
  Time t1 = Time();
  Time t2 = Time();
  t1.getTime();
  t2.getTime();
  Time().addition(t1, t2);
}
