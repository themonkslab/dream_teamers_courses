import 'dart:io';

void main () {
  // List of colors
  List<String> colors = ["red", "blue", "green", "yellow", "black", "white"];

  // Map to store clothing items by color
  Map<String, List<String>> clothingByColor = {};

  // Loop to prompt user to enter clothing items and colors
  while (true) {
    stdout.write("Insert the clothing item (type 'done' to exit or 'clothes' to print the list): ");
    String item = stdin.readLineSync().toString();

    if (item.toLowerCase() == 'done') {
      print('thanks for using Smart Closet');
      break;
    }

    stdout.write('Great! now choose a color: ');

  }



}