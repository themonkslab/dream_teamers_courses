# _Nullable and non nullable variables_

Do you remember in the introduction of this section that by default all values cannot be null and I gave you the following example

```dart
void main() {
    int x = null;
}
```

Now... how can we make that value _nullable_, or in other words, able to receive _null_ as a value? Very simple: by adding a question mark after the type at the time of declaration. With that, we can already assign _null_ to our variable `x`.

```dart
void main() {
    int? x = null;
}
```

Let's suppose we add another variable now and we want to sum both. 💀 What would happen and why?

```dart
void main() {
    int? x = null;
    int y = 5;
    print(x + y);
}
```

_The operator '+' can't be unconditionally invoked because the receiver can be 'null'._ It tells us that the operator cannot be invoked since at that point in the execution of our program, `x` may still be null (and in fact it is), so Dart saves our lives by notifying us and throwing an error before we can commit any atrocity with it! 🤣
