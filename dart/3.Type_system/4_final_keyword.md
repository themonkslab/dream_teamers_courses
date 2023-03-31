# Final keyword

We have just discussed how Dart can infer the type of the variable according to what value we assign to it when we declare the variable and for this we use the `var` keyword in its declaration. This would allow us to assign it a new value in the future as long as it respects the initial _type_.

```dart
void main() {
    var dayOfTheWeek = 'Monday';
    print(dayOfTheWeek);
    // 24 hours have passed and now we need
    // the value to change to the next day
    // so we assign a new value
    dayOfTheWeek = 'Tuesday';
    print(dayOfTheWeek);
}
```

Here we can see that the variable `dayOfTheWeek` needs to change its content or _value_ as the week progresses. However, __what would happen__ in the following case: we are measuring the result of a workout and __we are going to write down each day's measurements as the program goes on__ (we don't know them before we start the program) __but we want the results not to change__ nor can new values be assigned to it.

__The keyword _final_ allows us to declare a variable that is going to be read-only__, so we will not be able to assign a new value to it in the future:

```dart
void main() {
    final firstTrainingDay = '24 / 23 / 24 / 20';
    final secondTrainingDay = '16 / 27 / 27 / 24';
    final thirdTrainingDay = '12 / 20 / 21 / 21';
    final fourthTrainingDay = '7 / 17 / 18 / 16';
}
```

💀 Notice what happens if you try to assign a new value to one of those days!

Exactly, it says that the variable you took to test, can only be set once and thus __we ensure that the result of our calculation does not change, which leads to many fewer _bugs_ when developing.__
