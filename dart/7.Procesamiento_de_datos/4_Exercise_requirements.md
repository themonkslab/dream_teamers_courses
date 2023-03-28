# Exercise requirements

First of all, go to your `data_to_read.csv` to understand it a little bit. You can see that it is very simple and the first line is a _header_ that shows the titles of each column: 'Year', 'Score' and 'Title'. What do we want to achieve? Let's look at the _requirements_:

_Requirement_: obtain and display the average score of all movies.

As we have already seen, a good exercise is to start writing what we imagine we could do, in a colloquial or ordinary way. Let's start by writing some _pseudo-code_ below our code:

```dart
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  final contentInLines = File(inputFile).readAsLinesSync();
  for (var line in contentInLines) {
    print(line);
  }
// remove the first line since it's a header
// iterate through all lines
// convert each line into a `String` list that will represent each movie
// create a variable to store the total sum of the scores
// create a variable to store the average of the scores
// calculate the average
// print the average
}
```
