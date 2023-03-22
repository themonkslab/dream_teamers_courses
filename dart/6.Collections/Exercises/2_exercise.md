# Exercise 1

## Introduction

You have just landed a job as a software engineer at a startup that specializes in food delivery. One of the biggest problems they face is managing and tracking the inventory of the various restaurants they partner with. As a new hire, your first task is to help them create a tool to track the inventory of their partner restaurants.

## Context

Your team has received a dataset containing the inventory of one of the partner restaurants. The dataset contains three lists - one for the items, one for the quantities, and one for the prices. Your task is to write a program that takes this dataset and creates a map that associates each item with its quantity and price.

## Requirements

- Your program should take three lists - one for the items, one for the quantities, and one for the prices - and create a map that associates each item with its quantity and price.
- Your program should ask for an item and a quantity and returns the total cost.
- Your program should actualice the inventory.

## Initial Code

```dart
void main() {
  List<String> itemsList = ['bread', 'milk', 'eggs', 'flour', 'sugar'];
  List<int> quantitiesList = [10, 5, 12, 8, 15];
  List<double> pricesList = [1.50, 2.00, 0.25, 1.00, 0.75];
}
```
