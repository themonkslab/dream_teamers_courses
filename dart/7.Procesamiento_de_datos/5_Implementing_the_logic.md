# Implementing the logic

Now that we have our _pseudo-code_ ready, what do you think if we start writing a little bit? Let's go line by line:

## Removing the first line that is a header

To do this, we are going to use the familiar `List` method `removeAt(index)`. I would like you to add an `assert` to make sure we have removed the header. 💀 How could we do this? Remember that we write all this kind of code for training. In the next chapters we will see how to start testing and this will have been very useful for you!

```dart
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  final contentInLines = File(inputFile).readAsLinesSync();

  // remove the first line since it's a header
  contentInLines.removeAt(0);
  assert(!contentInLines[0].contains('Score'), 'The content should have its header removed');
  
  for (var line in contentInLines) {
    print(line);
  }
// iterate through all lines
// convert each line into a `String` list that will represent each movie
// create a variable to store the total sum of the scores
// create a variable to store the average of the scores
// calculate the average
// print the average
}
```

## Iterate through all the lines and convert it into a list of String type

Now we are going to use a method that you do not know yet and that allows us to convert a `String` in a `List<String>` according to the pattern that we decide. In this case, as we have a file separated by commas, that allows us to separate the values of each line in a simple way. To corroborate this, we will now print the `List<String>` that represents each movie:

```dart
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  final contentInLines = File(inputFile).readAsLinesSync();

  // remove the first line since it's a header
  contentInLines.removeAt(0);
  assert(!contentInLines[0].contains('Score'), 'The content should have its header removed');
  
  // iterate through all lines
  for (var line in contentInLines) {
    // convert each line into a `String` list that will represent each movie
    final movie = line.split(',');
    print(movie);
  }
// create a variable to store the total sum of the scores
// create a variable to store the average of the scores
// calculate the average
// print the average
}
```

Two strange things happen in our latest `print`:

1. Each score value and title is preceded by several spaces, apparently in order to maintain alignment. This can cause us problems when we want to make calculations.
2. The last of our movies is an empty list, possibly for the same reason of using spaces.

We will solve them in a few seconds!

## Create variables

💀 Algo que ya conocemos así que pueden hacerlo ustedes para practicar:

```dart
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  final contentInLines = File(inputFile).readAsLinesSync();
  // create a variable to store the total sum of the scores
  // create a variable to store the average of the scores
  var sumOfScores = 0.0;
  var averageScore = 0.0;

  // remove the first line since it's a header
  contentInLines.removeAt(0);
  assert(!contentInLines[0].contains('Score'), 'The content should have its header removed');
  
  // iterate through all lines
  for (var line in contentInLines) {
    // convert each line into a `String` list that will represent each movie
    final movie = line.split(',');
    print(movie);
  }
// calculate the average
// print the average
}
```

## Calculate the average and print it

💀 Give it a try to see what happens!

```dart
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  final contentInLines = File(inputFile).readAsLinesSync();
  // create a variable to store the total sum of the scores
  // create a variable to store the average of the scores
  var sumOfScores = 0.0;
  var averageScore = 0.0;

  // remove the first line since it's a header
  contentInLines.removeAt(0);
  assert(!contentInLines[0].contains('Score'), 'The content should have its header removed');
  
  // iterate through all lines
  for (var line in contentInLines) {
    // convert each line into a `String` list that will represent each movie
    final movie = line.split(',');
    print(movie);
    // calculate the average
    sumOfScores += double.parse(movie[1]);
  }
  
  averageScore = sumOfScores / contentInLines.length;
  // print the average
  print('Average score: ${averageScore.toStringAsFixed(0)}');
}
```

We encounter this `Exception` that tells us that there is a range error, since it is trying to search in the `index` 1, when the only valid value is 0: `Exception has occurred. RangeError (RangeError (index): Invalid value: Only valid value is 0: 1)`. Why does this happen? Does this mean that our last movie is not empty?

We can use `print` to understand if the last list or movie is empty:

```dart
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  final contentInLines = File(inputFile).readAsLinesSync();
  // create a variable to store the total sum of the scores
  // create a variable to store the average of the scores
  var sumOfScores = 0.0;
  var averageScore = 0.0;

  // remove the first line since it's a header
  contentInLines.removeAt(0);
  assert(!contentInLines[0].contains('Score'), 'The content should have its header removed');
  
  // iterate through all lines
  for (var line in contentInLines) {
    // convert each line into a `String` list that will represent each movie
    final movie = line.split(',');
    print(movie);
    // calculate the average
    print('last movie is empty?: ${movie.isEmpty}');
    // sumOfScores += double.parse(movie[1]);
  }
  
  averageScore = sumOfScores / contentInLines.length;
  // print the average
  print('Average score: ${averageScore.toStringAsFixed(0)}');
}
```

Here we can check that the last movie is not empty but what value can it have if when we print it it shows nothing? 💀 Go to Dartpad and try printing this:

```dart
void main() {
    final notTotallyEmptyList = [''];
    print(notTotallyEmptyList);
    print(notTotallyEmptyList.isEmpty);
}
```

😳 Exactly! It turns out that the first and only element of that list is an _empty string_ and that's why we are getting the error!

💀 Now then, let's proceed to remove the last item from the list, since it does not represent any movie and add an `assert` to make sure we did it correctly, calculate the average and print it. You already have all the elements to do this so take your time and try it on your own:

```dart
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  final contentInLines = File(inputFile).readAsLinesSync();
  // create a variable to store the total sum of the scores
  // create a variable to store the average of the scores
  var sumOfScores = 0.0;
  var averageScore = 0.0;

  // remove the first line since it's a header
  contentInLines.removeAt(0);
  assert(!contentInLines[0].contains('Score'), 'The content should have its header removed');
  contentInLines.removeAt(contentInLines.length - 1);
  assert(contentInLines[contentInLines.length - 1][0].isNotEmpty,
      'First item of last movie should not be empty');
  
  // iterate through all lines
  for (var line in contentInLines) {
    // convert each line into a `String` list that will represent each movie
    final movie = line.split(',');
    // calculate the average
    sumOfScores += double.parse(movie[1]);
  }
  
  averageScore = sumOfScores / contentInLines.length;
  // print the average
  print('Average score: ${averageScore.toStringAsFixed(0)}');
}
```
