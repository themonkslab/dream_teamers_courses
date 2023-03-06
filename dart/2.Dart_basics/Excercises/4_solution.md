# Solution 4

```dart
void main() {
  String message = ("This is a message. And I will replace it's vowels");
  String newMessage = message.replaceAll('a', '*');
  newMessage = newMessage.replaceAll('e', '*');
  newMessage = newMessage.replaceAll('i', '*');
  newMessage = newMessage.replaceAll('o', '*');
  newMessage = newMessage.replaceAll('u', '*');
  newMessage = newMessage.replaceAll('A', '*');
  newMessage = newMessage.replaceAll('E', '*');
  newMessage = newMessage.replaceAll('I', '*');
  newMessage = newMessage.replaceAll('O', '*');
  newMessage = newMessage.replaceAll('U', '*');
  print(newMessage);
}
```

Although this code solves the exercise, we are not complying with the DRY rule (we'll talk about it in section 4).

The following code does the same but in a much more efficient way. Here we can see that a new concept is introduced: `RegExp()` to solve it. Of course you already know what to do: go read the documentation about it!

```dart
void main() {
  String message = ("This is a message. And I will replace it's vowels");
  String newMessage = message.replaceAll(RegExp('[aeiouAEIOU]'), '*');
  print(newMessage);
}
```
