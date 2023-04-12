# Introduction

In order to explain what _Null safety_ is, we need to look deeper into something we saw a little bit: null values.

## Null value

Suppose we create an application for a restaurant. This app stores data of all the users who usually buy in that restaurant. Every time they place an order, the person in charge of taking the order asks if they have any favorite food to take into account in new preparations of the menu. And finally, suppose we write a feature of such a program that creates a menu based on the favorite meals of all users. __Will each user have a favorite meal? If not, what represents it? Exactly: a _null value___

Good! Now let's assume that we start creating the functionality and __we don't take into account that not all users have a favorite food__. What happens? Our app explodes and falls apart! 🤣

Remember we talked about two stages of an app? __If our error was detected__ in the first one, __the development stage__, __we would only have to try to follow the error until we find it, fix it and that's it__; __if on the other hand we were in the__ second one, __the production stage__, it would be very bad seen by the user who in many opportunities would leave our application and never come back. Besides, finding the bug there becomes much more difficult, taking even more time to fix it, generate a new app with the problem solved, get it approved by the stores, etc. __It would be a huge problem that would get worse the more radical the functionality that breaks__.

Wouldn't it be much better to be able to discover these errors when we are writing the code? Yes, that's why _Sound null safety_ was created in Dart! 😍

## Sound null safety

It is a _feature_ of Dart that says that any value cannot be null unless we make it explicit otherwise. What would this look like? 💀 Just try typing the following code in Dartpad and try to understand the error:

```dart
void main() {
    int x = null;
}
```

_A value of type 'Null' can't be assigned to a variable of type 'int'_, which means exactly what it says and it's because as we said, by default, every type in Dart cannot be null.

So, __we make sure we don't have null values where we don't expect them__ and it will throw _no null reference errors_. So, errors that would happen in real time, now happen at analysis time and code writing time, which makes it much easier to correct.

It is important to understand that __the goal of _null safety_ is not to eliminate these values since they are the only ones that allow us to represent the void in a value__. The problem is not this type of value itself but that we have these values where we do not expect them.
