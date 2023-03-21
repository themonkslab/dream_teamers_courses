# _Lists_

Also known as _arrays_ in other languages, they serve to represent a __collection of values__. We can initialize it as an empty _list literal_, (`[]`), fill it with values and print it as follows:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    print(cities); // ['Cordoba', 'New York', 'Paris']
}
```

## Access its values

__How can we specifically print a value from that list?__ 💀 We saw this in the previous exercise. Try to remember! 🤣

Remembering, we said that __to access the values of a list, we have to do it with _square brackets_ (`[ ]`), also called _subscript operator_ and putting the _index_ or position of that value within the list__. But let's explain a little more.

__Lists can have any number of values__. Let's call this number N. The _indexes_ are counted from the __first value__ and __that _index_ is 0__. To find the last value in the list, we should subtract 1 from the total number of elements in the list or N. So, to access the first one, we should write: `print(cities[0]);` and to access the last one we should write `print(cities[cities[cities.length - 1])`.

💀 What happens if you enter an _index_ that is not in the list, such as -1 or 3? You can try it!

Exactly, we get a `RangeError (index)` which says that the _index_ is _out of range_.

## Change its values

Again we can use the _subscript operator_ to assign a new value to the index of the list we want. For example:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    cities[2] = 'Rome';
    print(cities); // ['Cordoba', 'New York', 'Rome']
}
```

## Using a loop to print its values

If we wanted to print each one of the values of the list in a new line, we could use the already known _for loop_ to access each one of its elements and print them. We would need something new (that I just used but I did not explain) that would be the total of the elements that has this list and that is obtained from accessing through the `length` property.

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    for(var i = 0; i < cities.length; i++) {
        print(cities[i]);
    }
}
```

In the preceding case we use the _index_ `i` that we defined in the _loop_ to access each value in the list and print it. Remember that `i` will start as `0`, then `1` and finally `2`. However we have another _for_ method even simpler to use and called _for in loop_:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    // for(var i = 0; i < cities.length; i++) {
    //     print(cities[i]);
    // }
    for(var city in cities) {
        print(city);
    }
}
```

This _for in loop_, allows us to declare a variable to which we assign each element of our list and that later we can use to, for example, print it.

## 💪 Sum the items in the list

__Requirement__: print the sum of all values in the given list.

```dart
void main() {
    const list = [1,3,5,7,9];
}
```

__💀 Solution__:

```dart
void main() {
    const list = [1,3,5,7,9];
    var result = 0;
    for(var number in list) {
        result += number;
    }
    print('The result is: $result');
}
```
