// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names
  var studentNames = <String>['Alice', 'Bob', 'Charlie', 'Diana', 'Eve'];

  // 2. Create a Map<String, int> to store student scores
  var studentScores = <String, int>{};

  // 3. Use a for loop to assign random scores (60–100) to each student
  var random = Random();
  for (var name in studentNames) {
    var score = 60 + random.nextInt(41);
    studentScores[name] = score;
  }

  // 4. Find highest, lowest, and average scores
  var highestStudent = '';
  var highestScore = 0;
  var lowestStudent = '';
  var lowestScore = 100;
  var totalScore = 0;

  studentScores.forEach((student, score) {
    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
    totalScore += score;
  });

  var averageScore = totalScore / studentScores.length;

  print('Student Scores: $studentScores');
  print('Highest Score: $highestStudent with $highestScore');
  print('Lowest Score: $lowestStudent with $lowestScore');
  print('Average Score: ${averageScore.toStringAsFixed(2)}');

  // 5. Categorize each student using switch
  for (var student in studentNames) {
    var score = studentScores[student] ?? 0;
    var category = '';

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = 'Excellent';
        break;
      case 8:
        category = 'Good';
        break;
      case 7:
        category = 'Average';
        break;
      default:
        category = 'Needs Improvement';
    }

    print('$student: $score ($category)');
  }
}
