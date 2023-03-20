import 'dart:collection';
import 'dart:io';

void main () {
  // List of colors
  List <String> listOfColors =  ["red", "blue", "green", "yellow", "black", "white"];
  List

/*   // Map to store clothing items by color
  //Map clothingByColor = <String, List<String>> {};
  var clothingByColor = Map.fromIterable(listOfColors);
  print(clothingByColor); */

  // Loop to prompt user to enter clothing items and colors
  while (true) {
    print("Insert the clothing item (type 'done' to exit or 'clothes' to print the list): ");
    final item = stdin.readLineSync().toString();

    if (item.toLowerCase() == 'done') {
      print('\nthanks for using Smart Closet');
      break;
    }

    print('Great! now choose a color from the list $listOfColors: ');
    final colorInput = stdin.readLineSync().toString().toLowerCase();

    if (listOfColors.contains(colorInput) == false) {
      print("The color is not on the list. Do you want to add it (press 'y' to add or any to skip): ");
      var addColor = stdin.readLineSync().toString().toLowerCase();
      if (addColor == 'y') {
        listOfColors.add(colorInput);
      }
    }

    



    /* for (var color in listOfColors) {
      clothingByColor ['$color']= ''; 
    } */
    //print(listOfColors);



    
    }



   // if (color == listOfColors[0]) {
    //}

    
}






