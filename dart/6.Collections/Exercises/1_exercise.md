# Exercise 1

## Introduction

You work for a company that provides language learning software. Your team has been tasked with creating a new feature that allows users to track their progress in learning new vocabulary words. The feature requires you to create a program that can store and organize lists of words, track the number of times each word has been reviewed, and keep track of the user's progress in learning each word.

## Context

As part of the development process, you have been asked to create a prototype of the program that can store a list of words and their associated review counts, and can allow the user to view and update the review counts for each word. Your prototype must use Dart's built-in data structures for lists, sets, and maps, and must use loops and if statements to manipulate the data.

## Requirements

- Your program must be able to perform the following tasks:
- Allow the user to enter a list of words and their associated review counts. Each word should be entered as a string, and each review count should be entered as an integer.
- Store the list of words and their associated review counts in a map, where the keys are the words and the values are the review counts.
- Allow the user to view the list of words and their associated review counts.
- Allow the user to update the review count for a specific word.
- Calculate and display the user's progress in learning each word, as a percentage of the total number of reviews for all words.

## Initial code

```dart
import 'dart:io';
void main () {
//Create map to store words and counts
  Map <String, int> wordMap =  {};
//Create list to store inputs
  List <String> wordCountPair = [];

  while (true) {
    print('\nEnter a word and its review count, separated by a comma (e.g. "apple,3"). Enter "done" to finish.');
  }
}
```
