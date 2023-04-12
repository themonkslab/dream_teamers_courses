# Variables: declaration and initialization

@Mau Di Bert

Variables are __sort of boxes that allow us to store values__ inside. Depending on what we want to store we are going to need different types of boxes.

If in our program we wanted to __store__ our name __for later printing__, we would need one of these variables. Clean up your Dartpad and let's get started!

__Requirement__: store our name for later printing.

```dart
void main() {
    // We've seen what we used in the past for printing
    // but what we didn't see... 🤨 ... is this script!
    // These are code comments used for clarification, guidance, or organization.
    // We'll talk more about them!

    // We already know 'print()': it prints something on the screen.
    // What happens if we just write that?
    // We would be creating our first test! 😍.
    // Let's make it fail and see what it tells us!
    print();
}
```

![Missing arguments!](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/4.1_faltan_argumentos.png)

We've already learned that a line of code in _Dart_, has to end with ';', so we know that is not the error it's showing us. There, we have a very clear explanation: 'missing arguments '. We already saw in the past that `print('Hello world')` showed in console the sentence `Hello world'. What do you think could be the next step to _fix_ the test we created?

## 💀 Dead learning

Ideally, you should take some time to figure it out on your own before moving on. That way, you're going to make the neural connections necessary to learn! So, let's introduce this: 💀. That emoji represents the very death of learning! 😵💫🙄🤣. __Every time you see it, take your eyes off this article and get hard at work to solve the exercise__. You can set a _timer_ to determine how much time to spend on it before surrendering 😂.

We think that's been enough of a punishment, so we can move on!

What do we usually do when we are short on time? We tend to see part of what we are doing because we are thinking of doing something else__. If we had wanted to _try_ to solve our problem quickly, we probably would've done something like this:

```dart
void main() {
    print('Mauro');
}
```

Ready! Our name printed on the screen! 🙄 However, if we stop for a moment and read the _requirement_ again, what do we find? I leave it here so you don't have to look for it again:

__Requirement__: store our name for later printing.

If we were to go slowly, we could divide this request into two parts: _1: store our name_ for, _2: later printing_. But how do we save our name? We would need a... _sort of a box that allows us to store values_! 🚀. The time has come to introduce the _variables_.

## Variable declaration

One of these boxes, __to be created, must first be declared__ and this is done by writing the type of box it is going to be and then the name it is going to have and that represents in the clearest possible way what we want to put inside, always thinking that another person in the future can read it without having much idea of the project and trying that this person doesn't need to reason too much to understand its content: `String myName`.

_String_ represent a type of box that stores a series of characters.
_myName_ is the name I chose to represent precisely what I want to put inside the box without explaining too much in a redundant way, for example: `String developerNameOfThisNotAnyDartFromTheBasicsCourse`.

In the name we can use letters, numbers (as long as it is not the first character) or _underscore_ ('\_'), except for _Dart_ specific characters or words that we'll be learning in the course. However, as your programmer's detective eyes may have noticed, they have to be written in a particular way: _Camel case_.

### camelCase

Every language has its specificities and this is one of Dart's: except for the first letter which must be written in lower case, each word is differentiated by starting with a capital letter.

So far we have the declared variable. Can we use it now?

```dart
void main() {
    String myName;
    print(myName);
}
```

Nop! We got the following error:

_'The non-nullable local variable 'myName' must be assigned before it can be used.'.'._

In this case, I copied the error message directly to you because it is easier than screenshotting but I did it because you already know how to see errors and indeed, in this profession you are going to see much more code than screenshots! 😆.

So, strange message, isn't it? It's not if we take a breath, slow down and break it into smaller parts to understand it:

_non-nullable_: it must have a value; it cannot be initialized empty.
_local variable_: means it is in the piece of code we are writing.
_must be assigned before it can be used_: we have to assign it with a value, a content before using it, we have to _initialize it.

## Variable initialization

To initialize a variable is, __after the variable has been declared, to put a value into it__. To do this, we use the following order, word relation or _syntax_:

![Declaration and initialization](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/4.2_declarar_e_inicializar.png).

In this case, we are talking about a box or _variable_ that will store a sequence of characters and the appropriate one for this type of values is a _String_.

To create a value of type _String_, we surround this value with _single-quotes_ (''value''), or _double-quotes_ (''value'') or if we need to make _multilines_, we use _triple-quotes_ ('''
This value
Has multiple
lines''''
).

The __best practice__ would be to use __single-quotes__ in most cases.

Now, with all that, we would have everything we need to perfectly complete our _requirement_? 💀 Give it a try!

We hope you took the time to try to do it yourself and didn't sacrify your poor learning!

```dart
void main() {
    String myName = 'Mauro';
    print(myName);
}
```

Now we do meet all the necessary requirements :muscle: :

- [x] Store our name
- [x] Print it

### Going a little further

Let's say that in this program we are building we want to store in addition, our middle name, _in case we have one_. What happens with those who do not have a middle name? How is the application going to store something that might not exist or be... null? 😳

#### Null value

It's a __value used to represent something that has no value.__
Such a value in _Dart_ is called _null_, a special type of value that we will talk about quite a bit and quite a few headaches we are going to save ourselves if we learn about it from the beginning!

The first thing we have to do is when we declare our box or _variable_, tell it that it can contain a null value (_nullable variable_). How do we do this? Simply by adding after its type, the _null assertion operator_ (or poorly called, question mark '?' 😝) like this: `String?` The whole code would look something like.... 💀 Yes! First you try to store both the first and middle names in your code, assuming that the second name is null.

```dart
void main() {
    String myFirstName = 'Mauro';
    String mySecondName = 'Ariel'; 
    print (myFirstName + mySecondName);
}
```

## Concatenation and Interpolation

Good! Notice that we introduced something new and that is the possibility to _concatenate_ text values with a '+'. However, you could already see that when printing, the space between the two names is missing and they are overlapping. We are going to create that space just by adding a space:

```dart
void main() {
    String myFirstName = 'Mauro';
    String mySecondName = 'Ariel';
    print (myFirstName + ' ' + mySecondName);
}
```

All this time you had that blue underline and you could avoid it without telling me anything? It's not a bug but a suggestion. In this case it is telling you to use another way which is usually cleaner and clearer: _interpolation_:

![Use interpolation](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/4.3_usar_interpolacion.png).

Interpolation would be the process of wrapping with _single-quotes_ or _double-quotes_ the text, typing variable values and calculation results in there. It will display exactly what you type including spaces although you will have to use a $ to call the variables. In this case it would look like this:

```dart
void main() {
    String myFirstName = 'Mauro';
    String? mySecondName = 'Ariel';
    print ('$myFirstName $mySecondName');
}
```

We'll see that we achieve the same result but with a practice recommended by _Dart_ (__best practice__) and we have a cleaner code!

So now... how would you do it if you didn't have a middle name? 💀 Give it a try on your own!

If you had entered the null value, you would've had a recommendation on line 3: _Redundant initialization to 'null'_. Why is this? Because _Dart_ does it for us. And it would be enough just to declare that variable. The result would be something like this:

```dart
void main() {
    String myFirstName = 'Mauro';
String? mySecondName; // I lost the second one! 
print ('$myFirstName $mySecondName'); // It would print: Mauro null
}
```

Not what you expected either, is it? Suddenly my name is ``Mauro null''! 🤣 Let's close this article with something a little more advanced and that will allow that if the middle name is null, then it won't print it!

This code has __two new pieces: {} and '???'__. The __{}__ allow us to elaborate some operation in which we can, _if we want_, call a variable inside an _interpolation_. On the other hand the __'??'__ is one of the _null aware operators_ or operators to work with null values and allows us to return something else if the value that we are calling, is null. In this case, if `mySecondName` is null, we return an empty _String_, represented like this: ''.

```dart
void main() {
    String myFirstName = 'Mauro';
    String? mySecondName; // Now I'm a millennial!
    print ('$myFirstName ${mySecondName??''}');
}
```

The last comment I make is that the __{ }__ within an _interpolation_, are also useful in cases where we have to show a variable together (without space) with a suffix or prefix. For example, when we want to express the value of a temperature and its unit of measurement:

````dart
void main() {
    double temp = 24.5;
    print ('${temp}ºC');
}
```
