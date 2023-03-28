# Solution 1

```dart
void main() {
  var correctAnswers = 8;
  const totalQuestions = 10;
  final score = correctAnswers / totalQuestions * 100;

  print("You answered $correctAnswers out of $totalQuestions questions correctly, for a score of $score%.");
}
```

In this exercise, we use var to declare the correctAnswers variable because its value could change during the program's execution. We use const to declare the totalQuestions variable because its value is a constant that does not change during the program's execution. We use final to declare the score variable because its value is calculated at runtime from the correctAnswers and totalQuestions variables and should not change once it's set.
