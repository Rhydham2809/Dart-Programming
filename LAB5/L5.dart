// Create a class named Member having the following members:
// 1 - Name
// 2 - Age
// 3 - Phone number
// 4 - Address
// 5 - Salary
// It also has a method named printSalary() which prints the salary of the members. Two classes
// Employee and Manager inherit the Member class. The Employee and Manager classes have
// data members specialization and department respectively. Now, assign name, age,
// phone_number, address and salary to an Employee and Manager by making an object of both
// of these classes and print the same along with specialization and department respectively.

class Member {
  String? Name;
  int? Age;
  String? Phone_Number;
  String? Address;
  double? Salary;

  Member(String Name, int Age, String Phone_Number, String Address,
      double Salary) {
    this.Name = Name;
    this.Age = Age;
    this.Phone_Number = Phone_Number;
    this.Address = Address;
    this.Salary = Salary;
  }
}

class Employee extends Member {
  String? specilization;
  String? department;

  Employee(super.Name, super.Age, super.Phone_Number, super.Address,
      super.Salary, String specilization, String department) {
    this.specilization = specilization;
    this.department = department;

    print(
        "Name : ${super.Name} \n Age : ${super.Age} \n Phone_number : ${super.Phone_Number} \n Address : ${super.Address} \n Salary : ${super.Salary} \n Specilization : ${specilization} \n Department : ${department}");
  }
}

class Manager extends Member {
  String? specilization;
  String? department;

  Manager(super.Name, super.Age, super.Phone_Number, super.Address,
      super.Salary, String specilization, String department) {
    this.specilization = specilization;
    this.department = department;

    print(
        "Name : ${super.Name} \n Age : ${super.Age} \n Phone_number : ${super.Phone_Number} \n Address : ${super.Address} \n Salary : ${super.Salary} \n Specilization : ${specilization} \n Department : ${department}");
  }
}

void main(List<String> args) {
  Employee("Arjun", 31, "123456", "erwqce", 1234.45, "dance", "cse");
  Manager("Hello", 20, "123456", "cneoiwniowq", 12434.43, "study", "cse");
}
