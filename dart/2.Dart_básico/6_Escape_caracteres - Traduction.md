# _Escaping_ 

When we saw _interpolation_ we said that we could use _single-quotes_ ('') and _double-quotes_ ("") to do it. What difference would it make?

Imagine that we want to print this the text 'I'm Mauro'_, without saving it in any variable. How would you write that `String`? 💀 Go and try it!

What happened? Did you try to represent it like this: `print('I'm Mauro');`. If you did this, you probably got a lot of errors in the console! Why? Because we are starting the interpolation with a single-quotes and then we introduce another one for the verb abbreviation (_I'm_). There, Dart understands that we end up with what we want to print and doesn't understand anything that happens next.

One way to solve this would be instead of using single-quotes to wrap the whole text string, to use double-quotes. 💀 Try it yourself first! It would look something like this: `print("I'm Mauro");`. 
Now you can see that we no longer have errors in the console and it prints correctly. However, we have another way to solve it: _String escaping_.

## `String` _escaping_ 

There are special values in Dart and in this case, special values when interpolating. Do you remember that we used the sign \$ to perform operations or to print the value of a variable within an interpolation? What if we want to print something like _'I have $50'_. In that case, does it help to wrap the `String` with _double-quotes_? 💀 Try it!

Exactly! It doesn't work for us! For this we must use a special character to _escape_ other special characters so that they can be printed, as if they have been stripped of their special superpower 😂 This character is the _backslash_: '\\'.

The way to do it then would be `print('I have \$50')` and it looks like this.

```dart
void main() {
   print('I have \$50'); // I have $50
}
```

What happens finally if you want to print '¯\\_(ツ)_/¯'? This is called Kaomoji or ASCII Art and you will see that if you do it without escaping anything, our character will lose his left arm! 🥶. 💀 Use what you already know to escape the correct character and print the character with all its limbs! 😳

```dart
void main() {
   print('¯¯\\_(ツ)_/¯¯');
}
```

And when I told you finally, I forgot the following: what happens if we want to print a _path_ of the Windows operating system: 'C:\Windows\System32\AnotherFolder\AndAndAnother\AndAndAndSoSo'? You should escape every single one of those backslashes! What a nightmare! 😵💫 Luckily, we have one more way to express `Strings`, and that is to define it as a _raw String_ by adding an `r` before the _String delimiter_.

```dart
void main() {
   print(r'C:\Windows\System32\AnotherFolder\AndAnother\AndAnother\And\So\On');
}
```

## Single or double quotes?

Most of the code written in Dart uses _single quotes_ and that is the convention we usually use and also recommend (_best practice_). However, __the most important thing is to be coherent and consistent__ through our projects. If you happen to enter a project that uses _double-quotes_, try to stick with them to keep the coherence of the whole code.

## 💪 guessing the future

__Requirement__: write trying to guess what the console will print if we enter the following code:

```dart
void main() {
  int a = 10;
  print(a);
  print('$a');
  print('\$a');
  print('\\$a');
  print('\$$a');
}
```

__💀 Solution__:

```dart
void main() {
  int a = 10;
  print(a);      // 10
  print('$a');   // 10
  print('\$a');  // $a
  print('\\$a'); // \10
  print('\$$a'); // $10
}
```
