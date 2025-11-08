// Question 4: Inheritance & Polymorphism (Difficulty: 4/5) ⭐⭐⭐⭐

// 1) Abstract Class
abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  // Abstract methods
  void start();
  void stop();

  // Concrete method
  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }

  // Vehicle age
  int calculateAge() => DateTime.now().year - year;
}

// 2) Car extends Vehicle
class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);

  @override
  void start() => print("$brand $model: Starting the car engine...");

  @override
  void stop() => print("$brand $model: Stopping the car engine...");

  @override
  void displayInfo() {
    super.displayInfo();
    print("Type: Car | Doors: $numberOfDoors");
  }
}

// Motorcycle extends Vehicle
class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle(String brand, String model, int year, this.hasWindshield)
      : super(brand, model, year);

  @override
  void start() => print("$brand $model: Starting the motorcycle engine...");

  @override
  void stop() => print("$brand $model: Stopping the motorcycle engine...");

  @override
  void displayInfo() {
    super.displayInfo();
    print("Type: Motorcycle | Has windshield: $hasWindshield");
  }
}

void main() {
  // 3) Polymorphism demo
  List<Vehicle> vehicles = [
    Car("Toyota", "Camry", 2020, 4),
    Motorcycle("Honda", "CBR", 2021, true),
    Car("Tesla", "Model 3", 2023, 4),
  ];

  for (Vehicle v in vehicles) {
    v.displayInfo(); // Polymorphic: calls each class's override
    v.start(); // Polymorphic
    v.stop(); // Polymorphic
    print("${v.brand} age: ${v.calculateAge()} years\n");
  }
}
