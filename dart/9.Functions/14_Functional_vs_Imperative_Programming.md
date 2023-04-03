# Functional vs Imperative Programming

When we start programming, our main goal is to make things work, however we can. __As we gain more experience, we start using packages or libraries which are sets of functions that save us time and make our code simpler.__ And also our life! 😂

This __allows us to reduce the complexity without knowing many times, what happens inside those libraries__. Each library is a kind of black box where you interact with the parts that the developer of the library exposed (commonly called _API, application programmer interface_), without having much idea of what is going on inside.

This mechanism is called _Composability_ and consists of creating functions or classes (we will see what they are), which can be easily combined. Thus, if we create a function A, we can then apply a function B to it and we do not necessarily have to know what one or the other does, but rather, know what their required arguments and returns are.

In turn, using this type of approach would only be telling the machine, through our code and functions, what we care about instead of doing it step by step. We would be concentrating on the what and not the how. This would be _Functional programming_.

On the other hand, __the _Imperative Programming_ paradigm is in charge of telling the machine step by step what it has to do, it would be concentrating on the how__.

Let's see it more clearly in an example! Remember the `reduce` function we saw in the previous chapter? That would be doing functional programming since we don't care about what that function does _under the hood_ (inside its code), but what it allows us to do and what we need to do to call it.

```dart
void main() {
  const list = [1, 2, 3, 4];
  final sum = list.reduce((value, element) => value + element);
  print(sum); // 10
  // value:   1 => 3 => 6
  // element: 2 => 3 => 4
}
```

If we had to do it declaratively, we would do something like this:

```dart
void main() {
  const list = [1, 2, 3, 4];
  var sum = 0;
  for(var i = 0; i < list.length; i++) {
    sum += list[i];
  }
  print(sum); // 10
}
```

So far we can see that in the first example, the complexity is much lower, but notice what happens when we want to add complexity in both cases.

Now we want to add only the numbers that are greater than 2:

```dart
void main() {
  const list = [1, 2, 3, 4];
  final sum = list
      .where((element) => element > 2)
      .reduce((value, element) => value + element);
  print(sum); // 7
}
```

Notice how beautiful and simple: now we stack the functions by using `.`: as each method returns a list, first filtering the numbers greater than 2 and then on the new list, we apply the `reduce`. Thus, the original list is not altered and we achieve everything with a few more characters.

How would we do this declaratively?

```dart
void main() {
  const list = [1, 2, 3, 4];
  var sum = 0;
  for (var i = 0; i < list.length; i++) {
    if (list[i] > 2) {
      sum += list[i];
    }
  }
  print(sum); // 7
}
```

The important thing to note in this case is not only that the second example has more lines of code, but that we were forced to understand the internal logic of the _for_ loop to add the conditional.

In the functional example, we just added a function before the previous function without having to think about its internal implementation. This is functional programming.

## Why a mixture of both

As you may have seen, writing only declarative code makes our code more complicated, difficult to maintain, impossible to compose and at the end of the day, a less desirable programming experience.

Now that you know about functions, you can start from the basics, leaning towards a functional type of programming, where you take care of the purity of the functions and use methods like `map`, `where` or the ones you get to know to make your code simpler and composable.

There are different packages that facilitate this type of paradigm but for the moment we are going to concentrate on the tools that Dart has to give us and with them, to infinity! ♾️
