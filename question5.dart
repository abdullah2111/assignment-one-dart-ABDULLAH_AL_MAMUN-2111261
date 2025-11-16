// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
// TODO: Complete the following requirements:

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) => baseSalary + bonus;

  void processPayment(double amount) {
    // TODO: Process payment
    print('Payment of \$$amount processed.');
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  String generateReport(String employeeName, String department) {
    // TODO: Generate report
    return 'Monthly report for $employeeName in $department department';
  }
}

// 3. Abstract Class Employee:
//    - Properties: String name, String id, String department
//    - Abstract method: String getJobTitle()
//    - Abstract method: double getBaseSalary()
abstract class Employee {
  Employee(this.name, this.id, this.department);
  String name;
  String id;
  String department;

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print('$name (ID: $id, Department: $department)');
    print('Job Title: ${getJobTitle()}');
    print('Base Salary: ${getBaseSalary()}');
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  Manager(String name, String id, String department, this.teamSize)
      : super(name, id, department);
  int teamSize;

  @override
  String getJobTitle() => 'Manager';

  @override
  double getBaseSalary() => 8000;

  @override
  void displayInfo() {
    super.displayInfo();
    print('Team Size: $teamSize');
  }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  Developer(String name, String id, String department, this.programmingLanguage)
      : super(name, id, department);
  String programmingLanguage;

  @override
  String getJobTitle() => 'Senior Developer';

  @override
  double getBaseSalary() => 6000;

  @override
  void displayInfo() {
    super.displayInfo();
    print('Primary Language: $programmingLanguage');
  }
}

void main() {
  // Create employees
  final manager = Manager('John Smith', 'M001', 'IT', 6);
  final dev = Developer('Alice Johnson', 'D001', 'IT', 'Dart');

  // --- Manager Section ---
  print('=== Manager Details ===');
  manager.displayInfo();
  final mBaseSalary = manager.getBaseSalary();
  final mTotalSalary = manager.calculateSalary(mBaseSalary, 1000);
  print('Calculated Salary: $mTotalSalary');
  manager.processPayment(mTotalSalary);
  print('Report: ${manager.generateReport(manager.name, manager.department)}');

  print(''); // spacer line

  // --- Developer Section ---
  print('=== Developer Details ===');
  dev.displayInfo();
  final dBaseSalary = dev.getBaseSalary();
  final dTotalSalary = dev.calculateSalary(dBaseSalary, 500);
  print('Calculated Salary: $dTotalSalary');
  dev.processPayment(dTotalSalary);
}
