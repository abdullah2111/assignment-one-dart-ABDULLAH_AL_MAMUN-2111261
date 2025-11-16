// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐

// 1. Create variables of different data types
String name = 'Abdullah'; // Initialized with your name
int age = 25; // Initialized with your age
double height = 1.75; // Height in meters
bool isStudent = true; // True if you are a student

// 2. Function to calculate BMI
double calculateBMI(double weight, double height) {
  // Formula: BMI = weight / (height * height)
  var bmi = weight / (height * height);
  return bmi;
}

// 3. Function to determine grade based on score
String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return 'A';
  } else if (score >= 80 && score <= 89) {
    return 'B';
  } else if (score >= 70 && score <= 79) {
    return 'C';
  } else if (score >= 60 && score <= 69) {
    return 'D';
  } else {
    return 'F';
  }
}

void main() {
  // Initialize values
  name = 'Mamun';
  age = 23;
  height = 1.75; // meters
  isStudent = true;

  // Calculate BMI (Example: 70kg, 1.75m)
  var bmi = calculateBMI(70, height);
  var grade = getGrade(85); // Example score

  // Display results
  print('Name: $name, Age: $age, Height: $height m, Is Student: $isStudent');
  print('BMI: ${bmi.toStringAsFixed(2)}');
  print('Grade: $grade');
}
