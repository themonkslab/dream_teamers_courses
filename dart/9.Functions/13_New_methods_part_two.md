# New methods part two

Now that we know about anonymous functions, we can learn about other useful methods to keep adding to our list.

## Where

The _where_ method, __allows us to analyze a _collection_ value by value using an anonymous function that we pass to it. It will return an `Iterable` with all those values that have returned `true` according to the anonymous function that we have passed it.__

Suppose we have a list of numbers and we want to return only the even numbers. We know that the even numbers are those that divided by two, have a remainder of 0. Then, we can pass to the `where` a function that uses the `%` to divide by `2` and if its result is `0`, it will have given `true` so it means that it is an even number:

```dart
void main() {
  const list = [1, 2, 3, 4, 5, 6];
  final even = list.where((value) => value % 2 == 0);
  print(even);
}
```

## First where

This method __also receives an anonymous function as first parameter only that returns the first value that having been parsed by the function we pass it, returns `true`__. Let's see an example where the number `2` is repeated several times:

```dart
void main() {
  const list = [1, 2, 3, 2, 4, 2, 5, 2, 6];
  final even = list.where((value) => value % 2 == 0);
  print(even);
  final firstTwoElement = list.firstWhere((value) => value % 2 == 0);
  print(firstTwoElement);
}
```

This method at the same time, __allows us in its second named parameter (`orElse`), to receive another anonymous function that will be executed only if in none of the iterations, the function that we have passed it returns `true`__.

For example, we want to return the value that multiplied by `10` equals 100. Since no number in the list will give us such a result, we will return a `-1`:

```dart
void main() {
  const list = [1, 2, 3, 2, 4, 2, 5, 2, 6];
  final even = list.where((value) => value % 2 == 0);
  print(even);
  final firstTwoElement = list.firstWhere((value) => value % 2 == 0);
  print(firstTwoElement);
  final multipliedBy10is100 =
      list.firstWhere((value) => value * 10 == 100, orElse: () => -1);
  print(multipliedBy10is100);
}
```

## 💪 Finding the price

__Requirement__: given the following text, create a function that receives the text, separates it into sentences by their dots, and returns a list of all sentences containing the word _price_. Print it to corroborate it.

```dart
  const airpodsArticle = '''
Apple's AirPods lineup has grown more complex over the years, and rumors pointed to a middle-tier earbud that would take on characteristics of the AirPods Pro at a much lower price. Rumors about the supposed "AirPods Pro Lite" have stopped, and Apple released the third-generation AirPods at \$179 in late 2021, which may be the rumored earbuds.
Rumors suggested that Apple was prepared to release a new set of AirPods in the middle of the lineup. While it wasn't a final product name, these rumored earbuds were referred to as the 
AirPods, AirPods with wireless charging case, and AirPods Pro already offer a clear upgrade path
The third-generation AirPods appear to be the rumored "AirPods Pro Lite," but the rumor mill hasn't directly acknowledged this possibility as of yet. The new AirPods are improved second-generation AirPods with a design similar to AirPods Pro but don't have ANC features or changeable ear tips.
It is possible that another set of earbuds are in development that feature the below rumors, however, it is more likely that they do not exist given the third-generation AirPods' existence. Apple tends to develop multiple versions of a product and only one makes it out, so while this rumored product may have existed at some point, it seems the third-generation AirPods won out.
Rumors about "AirPods Pro Lite"
As with all unreleased Apple products, it is likely this product falls into one of three camps: it doesn't exist, it exists and is never announced, or it exists and is imminent. Very little concrete information is available, and all that is known is a rumored name leaked from the supply chain.
A rumor from avid leaker Jon Prosser in April 2020 placed a release of new AirPods products sometime in October, though that didn't come to pass. Apple released the over-the-ear AirPods Max in December with no indication of other AirPods refreshes coming.
Reports from The Elec, a South Korean material supplier with a weak rumor history, suggest that the new earbuds would start shipping in early 2021 and fall into the \$199 price point. They were apparently ready at the end of 2019, but the popularity of the more expensive AirPods Pro pushed the release back.
As we got further into 2021 it was apparent they either never existed or got scrapped last second in favor of other products. Again, there is always the possibility the "AirPods Pro Lite" is a different product that has already been released, like the third-generation AirPods.
Potential Lineup Changes
If these are an AirPods product, then a change in the lineup for a more obvious upgrade path would be in order. Right now, wireless charging is a premium in the line, and as Apple has continued production of the wireless charging case, it may have cheapened the cost of including the more versatile case.

There is not much room in the AirPods lineup for the “AirPods Pro Lite.”
With the entry of third-generation AirPods, adding yet another product between AirPods Pro and third-generation AirPods is unlikely. The \$179 price point fits as a perfect price point between the now discounted \$129 AirPods and \$249 AirPods Pro.
Possible Beats Product
Another possibility is the term is likely a placeholder, and may not even be AirPods at all. The rumored cheaper AirPods Pro could be a Beats by Dre product as well, and it's also possible the rumors were referring to Beats Fit Pro or other earbuds in the lineup.

Beats Solo Pro was the first to receive Apple’s new H1 chip, and more will follow.
Supply chain observers never get the full picture when looking at a specific part or company, so Apple could easily be developing new Beats products that are similar to AirPods and use a codename to reflect that.
"AirPods Pro Lite" Pricing
A new earbud falling between the one-size-fits-all AirPods and the premium AirPods Pro seems unlikely, as the two device sets are already very close in price and have an obvious upgrade path. If you are in the market for totally wireless earbuds, it likely won't benefit you to wait for the unannounced "AirPods Pro Lite." Check out AppleInsider's Price Guide for deals on AirPods.
''';
```

---

__💀 Solution__:

```dart
void main() {
  const airpodsArticle = '''
Apple's AirPods lineup has grown more complex over the years, and rumors pointed to a middle-tier earbud that would take on characteristics of the AirPods Pro at a much lower price. Rumors about the supposed "AirPods Pro Lite" have stopped, and Apple released the third-generation AirPods at \$179 in late 2021, which may be the rumored earbuds.
Rumors suggested that Apple was prepared to release a new set of AirPods in the middle of the lineup. While it wasn't a final product name, these rumored earbuds were referred to as the 
AirPods, AirPods with wireless charging case, and AirPods Pro already offer a clear upgrade path
The third-generation AirPods appear to be the rumored "AirPods Pro Lite," but the rumor mill hasn't directly acknowledged this possibility as of yet. The new AirPods are improved second-generation AirPods with a design similar to AirPods Pro but don't have ANC features or changeable ear tips.
It is possible that another set of earbuds are in development that feature the below rumors, however, it is more likely that they do not exist given the third-generation AirPods' existence. Apple tends to develop multiple versions of a product and only one makes it out, so while this rumored product may have existed at some point, it seems the third-generation AirPods won out.
Rumors about "AirPods Pro Lite"
As with all unreleased Apple products, it is likely this product falls into one of three camps: it doesn't exist, it exists and is never announced, or it exists and is imminent. Very little concrete information is available, and all that is known is a rumored name leaked from the supply chain.
A rumor from avid leaker Jon Prosser in April 2020 placed a release of new AirPods products sometime in October, though that didn't come to pass. Apple released the over-the-ear AirPods Max in December with no indication of other AirPods refreshes coming.
Reports from The Elec, a South Korean material supplier with a weak rumor history, suggest that the new earbuds would start shipping in early 2021 and fall into the \$199 price point. They were apparently ready at the end of 2019, but the popularity of the more expensive AirPods Pro pushed the release back.
As we got further into 2021 it was apparent they either never existed or got scrapped last second in favor of other products. Again, there is always the possibility the "AirPods Pro Lite" is a different product that has already been released, like the third-generation AirPods.
Potential Lineup Changes
If these are an AirPods product, then a change in the lineup for a more obvious upgrade path would be in order. Right now, wireless charging is a premium in the line, and as Apple has continued production of the wireless charging case, it may have cheapened the cost of including the more versatile case.

There is not much room in the AirPods lineup for the “AirPods Pro Lite.”
With the entry of third-generation AirPods, adding yet another product between AirPods Pro and third-generation AirPods is unlikely. The \$179 price point fits as a perfect price point between the now discounted \$129 AirPods and \$249 AirPods Pro.
Possible Beats Product
Another possibility is the term is likely a placeholder, and may not even be AirPods at all. The rumored cheaper AirPods Pro could be a Beats by Dre product as well, and it's also possible the rumors were referring to Beats Fit Pro or other earbuds in the lineup.

Beats Solo Pro was the first to receive Apple’s new H1 chip, and more will follow.
Supply chain observers never get the full picture when looking at a specific part or company, so Apple could easily be developing new Beats products that are similar to AirPods and use a codename to reflect that.
"AirPods Pro Lite" Pricing
A new earbud falling between the one-size-fits-all AirPods and the premium AirPods Pro seems unlikely, as the two device sets are already very close in price and have an obvious upgrade path. If you are in the market for totally wireless earbuds, it likely won't benefit you to wait for the unannounced "AirPods Pro Lite." Check out AppleInsider's Price Guide for deals on AirPods.
''';

  print(findPrice(airpodsArticle));
}

List<String> findPrice(String rawDocument) {
  final parsedList = rawDocument.split('.');
  final sentencesWithPrice = parsedList.where(
      (sentence) => sentence.contains('price') || sentence.contains('Price'));
  return sentencesWithPrice.toList();
}

```

## 💪 Implementing the _where_ ourselves

__Requirement__: implement the `where` function as if it were not written. It is a method that has to receive a list of items and a function that evaluates each item of this list and then returns all those values that have fulfilled the condition requested in the function. Use generics so that it works with lists of any type and demostrate its functionality passing to your new function `where` the list `[1,2,3,4,5,6]` and a function as parameter that returns the odd numbers. The result should be `[1, 3, 5]`.

__💀 Solution__:

```dart
void main() {
  const list = [1, 2, 3, 4, 5, 6];
  final newList = where(list, (value) => value % 2 != 0);
  print(newList);
}

List<T> where<T>(List<T> items, bool Function(T value) check) {
  final filteredItems = <T>[];
  for (var item in items) {
    final shouldBeAdded = check(item);
    if (shouldBeAdded) {
      filteredItems.add(item);
    }
  }
  return filteredItems;
}
```

## Reduce

This method allows us to combine all the elements in a list and produce a unique result. The most common example is to add all the elements of a list and avoid having to use a _for-in_. Let's see it with an example.

Suppose we have an `int` list and we want to sum all its items. We are going to call the `reduce` method in this list and it is going to receive a function that is going to return an `int` and it is going to take two values as arguments, both `int` and it is going to execute this function in an iterative way, as I show you in the comments:

```dart
void main() {
  const list = [1, 2, 3, 4];
  final sum = list.reduce((value, element) => value + element);
  print(sum); // 10
  // value:   1 => 3 => 6
  // element: 2 => 3 => 4
}
```

In the first iteration, the `value` is our first item in the list, and our second item, the `element`. It performs the operation and moves to the next iteration. The `value` will now have been updated with the result of the first addition, from the previous iteration, and the `element` will now be the third item. Finally in the last iteration, the `value` is the result of the sum of the previous iteration and the `element` is our last item in the list. What returns at the end is the last result reached by the `value`.
