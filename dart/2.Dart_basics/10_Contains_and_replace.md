# Contains and replace

Let's say garlic doesn't suit me very well and __I want to make an app__ that reads the ingredients of a recipe in a menu and is able to tell me whether or not it has garlic in it. __We could start by writing the steps to make it__, as follows:

1. Create a variable that stores whether or not the recipe has garlic in it.
2. Create a variable for the recipe.
3. Store the recipe in the variable.
4. Check if the recipe contains the word garlic.
5. Assign the answer from the previous step to our variable that tells us if it has garlic or not.
6. Print in console the result of checking if the recipe has garlic or not, according to the defined variable.

What we have just done is called __Pseudo code__ and it is a methodology that allows us to __represent the steps__ to create an algorithm or solve a problem, __in a colloquial or ordinary way__. From here, the only thing we have to do is to translate it into code! We are going to do this conversion little by little and going from end to beginning, following our __strategy of creating from tests or from what we should get when our program is finished__.

The final goal is '6. Print in console the result of checking if the recipe has garlic or not, according to the defined variable.'. It would look something like this:

```dart
void main() {
    print('Contains \'garlic\': $containsGarlic');
}
```

Did you notice how we use the escape character?

Ok! So as you saw, this returns us an error because the variable _containsGarlic_ has not yet been declared or initialized and this is the way we are creating from the end: now we know that our next step is to create that variable.

```dart
void main() {
    bool containsGarlic;
    print('Contains \'garlic\': $containsGarlic');
}
```

Now it returns another error: _'Non-nullable local variable 'containsGarlic' must be assigned before it can be used.'_ It means this variable cannot be empty before being used (remember: _sound null safety_). However, before assigning it with a value, we have to check whether or not the recipe contains garlic. Notice how __in this way, is Dart that is guiding us in what code to write__.

## _Contains_

To do this, we can use another method specific to this type of _primitive object_ that we already know, called `String`. But first, we store the recipe in a variable:

```dart
void main() {
    bool containsGarlic;
    String recipe = '''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
''';
    print('Contains \'garlic\': $containsGarlic');
}
```

It keeps complaining in the same way so let's solve it by using the _contains_ method. This method __is in charge of searching inside our text strings the pattern we decide and returns us a boolean value__: it is _true_ or _false_ that our text contains that pattern. In the following case, if we only had the recipe, it would be something like this (pay attention to how we use the method by adding after the variable the _dot_):

```dart
void main() {
    print('''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
'''.contains('garlic'));
}
```

Did you see? It returned that it doesn't contain the word _'garlic'_ although I'm not convinced that it really works. 💀 Try it with other words and see if the method works.

As you could see, except for one case 🤨, it works perfectly. However, remember that we are trying to write code for people as well as computers, so let's go back to our initial approach and rewrite it in a way that makes it simpler to understand:

```dart
void main() {
    bool containsGarlic;
    String recipe = '''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
''';
    containsGarlic = recipe.contains('garlic');
    print('Contains \'garlic\': $containsGarlic');
}
```

This way, our code is understood without having to explain how it is written but... what case would we be ignoring? 💀 The following you are about to see, should make it clear what we missed. However, to fully understand it, you must know what the '||' operator does.

## The || (OR) operator

It is an operator that will return _true_ or _false_ when analyzing two or more operations. If analyzing the first operation results in a _true_, it no longer continues and returns that value; if the first one returns _false_, it continues to the next one and only returns _false_ if all of them were _false_. Don't worry, we will see this later, although I like to show you these things as we go along, with the practical use.

```dart
void main() {
    bool containsCheese;
    String recipe = '''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
''';
    containsCheese = recipe.contains('Cheese') || recipe.contains('cheese');
    print('Contains \'Cheese\' or \'cheese\': $containsCheese');
}
```

Exactly! We were looking for a word all in lower case but if the sentence starts with that word, it could be capitalized and we would miss the ingredient. Besides, there may be mistakes in the recipe and say _'gralic'_ instead of _'garlic'_ so in the future you are going to see more advanced ways of checking. 💀 Good! Cheer up and write the final example!

```dart
void main() {
    bool containsGarlic;
    String recipe = '''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
''';
    containsGarlic = recipe.contains('Garlic') || recipe.contains('garlic');
    print('Contains \'Garlic\' or \'garlic\': $containsGarlic');
}
```

Good! What if you were the one who wrote this recipe and not only listed ingredients but then explained how to use them, something that could have taken you a long time, and finally, after a lot of effort, you realized that instead of having _'Arugula'_, it actually had _'Spinach'_?

## _Replace_ or replace

We could __find the _Pattern_ that represents that word and replace it__ and that's basically what the method does.

Let's see:

```dart
void main() {
    String recipe = '''
Vegan Pizza without TACC
------------------------

Ingredients
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil

Steps to reproduce
---
1. Put arugula into it.
2. Then do a particular thing with arugula.
3. After that, do much more things with the arugula.
4. Finally, eat the arugula... and the pizza!
''';
    print(recipeWithSpinach);
}
```

Here we can see a recommendation in blue and an error in red. 💀 We will solve both at once although with the knowledge you already have (_tip_: remember that if you place a '.' after the `String` variable, you get a list of methods; look for _replaceAll_) you can try to understand how that method works and try it yourself! It is worth a try!

💀 One more thing before you see the solution: remember that the word can start with upper or lower case:

```dart
void main() {
  String recipe = '''
Vegan Pizza without TACC
------------------------

Ingredients
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil

Steps to reproduce
---
1. Put arugula into it.
2. Then do a particular thing with arugula.
3. After that, do much more things with the arugula.
4. Finally, eat the arugula... and the pizza!
''';
  String recipeWithSpinach = recipe.replaceAll('Arugula', 'Spinach');
  recipeWithSpinach = recipeWithSpinach.replaceAll('arugula', 'spinach');

  print(recipeWithSpinach);
}
```

Notice that you have a huge number of methods available for the `String` type! Try them out! I also recommend you to join our [Discord](https://discord.gg/vpPVf7guPC) where you will find more exercises!