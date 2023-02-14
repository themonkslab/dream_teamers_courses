# _Dynamic keyword_

It is a keyword that __allows us to get out of the _type safety_ proposed by Dart; it allows us to declare a variable that can be of any type at any time__. Let's first see how it is used and then understand why, in very specific cases, it can be useful:

```dart
void main() {
    int x = 1;
    x = true; // error
    dynamic y = 6;
    y = false; // no error! 😵‍💫
}
```

We have already seen all the advantages that the Dart typing system brings us, why should we abandon it?

In very specific cases such as when we work with _json_ type files and we do not know what content each variable will have, it will be very useful to use this _keyword_:

```dart
{
    "employee": {
        "name": "Mau Di Bert",
        "age": 38,
        "height": 1.65 
    }
}
```

Although we still lack information to fully understand it, we can see that the __values__ on the right __are changing__ and therefore, __we need the dynamic type__ to create the variables that hold this kind of data.
