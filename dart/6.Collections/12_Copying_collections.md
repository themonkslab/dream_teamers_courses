# Copiando colecciones

Suppose we have a `List<int>` and we want to make a copy of it. The form that comes first to our mind, could be something like this right?

```dart
void main() {
    final firstList = [0,1,2];
    final secondList = firstList;
}
```

It sounds logic, doesn't it? 💀 Go try the following and then explain what the problem is:

```dart
void main() {
    final firstList = [0,1,2];
    final secondList = firstList;
    secondList[0] = 1;
    print('firstList: $firstList');
    print('secondList: $secondList');
}
```

When we change the value of our second list did we also change the value of the first list? 😳 What happened? Are they the same list? Let's test it:

```dart
void main() {
    final firstList = [0,1,2];
    final secondList = firstList;
    assert(firstList == secondList);
    secondList[0] = 1;
    print('firstList: $firstList');
    print('secondList: $secondList');
}
```

As you can see, our _assertion_ tells us that both lists are the same! What happened? Actually, copying the list as we did, through the `firstList` variable, what we are actually doing is:

1. First we create a list called `firstList`.
2. That list is stored in memory and our variable is a reference to that memory space.
3. We use that variable to initialize a second list.
4. Again that second list is a reference but not to a new memory space but to the previous one we created.

Good! 💀 I want you to think of ways to copy a list using everything you learned in the 'New operators and statements' chapter. Also, add an `assert` that only pops if the lists are the same. After you go and try, here is the solution:

__Solution 1__:

```dart
void main() {
  final firstList = [0, 1, 2];
  final secondList = [
    for (var index in firstList) index,
  ];
  assert(firstList != secondList, 'Lists should be different');
  secondList[0] = 1;
  print('firstList: $firstList');
  print('secondList: $secondList');
}
```

__Solution 2, more concise and beautiful__:

```dart
void main() {
  final firstList = [0, 1, 2];
  final secondList = [...firstList];
  assert(firstList != secondList, 'Lists should be different');
  secondList[0] = 1;
  print('firstList: $firstList');
  print('secondList: $secondList');
}
```
