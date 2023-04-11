# Logical, equality and relational operators

The _equality and relational operators_ allow us to compare expressions. All of them have in common that the result will be a `bool`:

Equal: __`==`__ `print(5==2)`
Not equal: __`!=`__ `print(5!=2)`
Greater than: __`>`__ `print(5>2)`
Less than: __`<`__ `print(5<2)`
Greater than or equal to: __`>=`__ `print(5>=2)`
Less than or equal to: __`<=`__ `print(5<=2)`

In this case, we use _literals_ `int` but note that we can use any expressions we want and mix literals with variables, as long as they are _compatible_. 🤨 Notice what happens if you try to compare `print(5 < 2.5);` Come to any conclusion?

However, how would you do this if you wanted to compare multiple expressions?

## Logical operators

They can be used to invert or combine _boolean expressions_ (they result in `true` or `false`):

- __`!expr`__ called in logic __negation__ (_not_) inverts the value of the expression (`expr` is an expression. It can be a comparison between two numbers, a bool, etc.): `print(!false)` `print(!(2<5>))`.
- __`||`__ called __disjunction__ (_or_) returns `true` if one side or the other is `true`. On finding a `true` it returns `true`, and no longer evaluates the following ones. It only returns `false` if both expressions are false: `print(false||true)`.
- __`&&`__ called __conjunction__ (_and_) returns: `true` if both sides are `true` and if it finds any `false` it stop the analysis and returns `false`: `print(true&&false)`.

Note that relational operators take precedence over logical operators, so the latters are evaluated at the end and you can do something like the following without the need to use parentheses:

```dart
void main() {
    print(5 > 2 || 5 > 7); // true - see that here it won't evaluate
                           // the second expression because
                           // the first one is true
    print(5 < 2 && 5 > 7); // false
}
```

If you have more complex operations, you can use the `()` to execute what is inside the parentheses first:

```dart
void main() {
    print((5 > 2 || 5 > 7) && 5 == 6); // false
}
```

And if we want to change its final value, we can use the _NOT operator_ `!expr`, which, after the expression has been evaluated, inverts its value:

```dart
void main() {
    print(!((5 > 2 || 5 > 7) && 5 == 6)); // true
}
```

## 💪 Basic email validation

__Requirement__: use what you have learned to do email validation by checking that:

1. The email provided is not empty.
2. The email provided contains '@'.

__Extra__: the `String` has a method called `isNotEmpty` that returns `true` if that `String` is not empty since we could declare an empty `String` (without characters inside but not null), as follows: `String myEmptyString = '';`.

__💀 Solution__:

```dart
void main() {
  String email = 'test@example.com';
  print(
      'Is email \'$email\' valid?: ${email.isNotEmpty && email.contains('@')}'); //
}
```
