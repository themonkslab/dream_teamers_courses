# Solution 1

```dart
import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart file_name.dart 1_data.csv');
    exit(1);
  }
  final inputFile = args.first;
  final lineContent = File(inputFile).readAsLinesSync();
  lineContent.removeAt(0);

  // Create variables for calculations
  const productList = ['apple', 'orange', 'banana'];
  var totalApple = 0;
  var totalOrange = 0;
  var totalBanana = 0;
  var appleRevenue = 0.00;
  var orangeRevenue = 0.00;
  var bananaRevenue = 0.00;

  // Iterate through each line and turn it into a list
  for (var line in lineContent) {
    final sale = line.split(',');
    // Calculate sales and revenues per product
    if (sale[1].toLowerCase()==productList[0]) {
      totalApple += int.parse(sale[2]);
      appleRevenue += int.parse(sale[2])*double.parse(sale[3]);    
    } else if (sale[1].toLowerCase()==productList[1]) {
      totalOrange += int.parse(sale[2]);
      orangeRevenue += int.parse(sale[2])*double.parse(sale[3]);   
    } else {
      totalBanana += int.parse(sale[2]);
      bananaRevenue += int.parse(sale[2])*double.parse(sale[3]);   
    }   
  }

  // calculate average prices
  var appleAveragePrice = (appleRevenue/totalApple);
  var bananaAveragePrice = (bananaRevenue/totalBanana);
  var orangeAvaragePrice = (orangeRevenue/totalOrange);

  // This block of code goes through every posibility when looking for the product with more sales. I know is a bit long, and we will do the same to search for the other requirements.
  // At the end I'll leave a shorter way, but with other features we haven't study yet.
  if (totalApple > totalOrange) {
    if (totalApple > totalBanana) {
      print('The product that sold the most is ${productList[0]} with a total of $totalApple');
    }
    else if (totalApple < totalBanana) {
      print('The product that sold the most is ${productList[2]} with a total of $totalBanana');
    } else {
      print('The products that were sold the most were ${productList[2]} and ${productList[0]} with a total of $totalApple');
    }
  } else if (totalApple == totalOrange) {
      if (totalApple > totalBanana) {
        print('The products that were sold the most were ${productList[0]} and ${productList[1]} with a total of $totalApple');
      } else if (totalApple == totalBanana) {
        print('All products were sold equally for $totalApple');
      } else {
        print('The product that sold the most is ${productList[2]} with a total of $totalBanana');
      }
  } else {
    if (totalOrange > totalBanana) {
      print('The product that sold the most is ${productList[1]} with a total of $totalOrange');
    } else if (totalOrange == totalBanana) {
      print('The products that were sold the most were ${productList[2]} and ${productList[1]} with a total of $totalOrange');    
    } else {
      print('The product that sold the most is ${productList[2]} with a total of $totalBanana');
    }
  }

  // This block of code goes through every posibility when looking for the product with more revenue.
  if (appleRevenue > orangeRevenue) {
    if (appleRevenue > bananaRevenue) {
      print('The product that sold the most is ${productList[0]} with a total of \$${appleRevenue.toStringAsFixed(2)}');
    }
    else if (appleRevenue < bananaRevenue) {
      print('The product that sold the most is ${productList[2]} with a total of \$${bananaRevenue.toStringAsFixed(2)}');
    } else {
      print('The products that were sold the most are ${productList[2]} and ${productList[0]} with a total of \$${bananaRevenue.toStringAsFixed(2)}');
    }
  } else if (appleRevenue == orangeRevenue) {
      if (appleRevenue > bananaRevenue) {
        print('The products that were sold the most are ${productList[0]} and ${productList[1]} with a total of \$${appleRevenue.toStringAsFixed(2)}');
      } else if (appleRevenue == bananaRevenue) {
        print('All products were sold equally for \$${appleRevenue.toStringAsFixed(2)}');
      } else {
        print('The product that sold the most is ${productList[2]} with a total of \$${bananaRevenue.toStringAsFixed(2)}');
      }
  } else {
    if (orangeRevenue > bananaRevenue) {
      print('The product that sold the most is ${productList[1]} with a total of \$${orangeRevenue.toStringAsFixed(2)}');
    } else if (orangeRevenue == bananaRevenue) {
      print('The products that were sold the most are ${productList[2]} and ${productList[1]} with a total of \$${orangeRevenue.toStringAsFixed(2)}');    
    } else {
      print('The product that sold the most is ${productList[2]} with a total of \$${bananaRevenue.toStringAsFixed(2)}');
    }
  }

  // This block of code goes through every posibility when looking for the product with the best average price.
  if (appleAveragePrice > orangeAvaragePrice) {
    if (appleAveragePrice > bananaAveragePrice) {
      print('The product with the best average price is ${productList[0]} with \$${appleAveragePrice.toStringAsFixed(2)}');
    }
    else if (appleAveragePrice < bananaAveragePrice) {
      print('The product with the best average price is ${productList[2]} with \$${bananaAveragePrice.toStringAsFixed(2)}');
    } else {
      print('The products with the best average price are ${productList[2]} and ${productList[0]} with \$${bananaAveragePrice.toStringAsFixed(2)}');
    }
  } else if (appleAveragePrice == orangeAvaragePrice) {
      if (appleAveragePrice > bananaAveragePrice) {
        print('The products with the best average price are ${productList[0]} and ${productList[1]} with \$${appleAveragePrice.toStringAsFixed(2)}');
      } else if (appleAveragePrice == bananaAveragePrice) {
        print('All products had the same average price: \$${appleAveragePrice.toStringAsFixed(2)}');
      } else {
        print('The product with the best average price is ${productList[2]} with \$${bananaAveragePrice.toStringAsFixed(2)}');
      }
  } else {
    if (orangeAvaragePrice > bananaAveragePrice) {
      print('The product with the best average price is ${productList[1]} with \$${orangeAvaragePrice.toStringAsFixed(2)}');
    } else if (orangeAvaragePrice == bananaAveragePrice) {
      print('The products with the best average price are ${productList[2]} and ${productList[1]} with \$${orangeAvaragePrice.toStringAsFixed(2)}');    
    } else {
      print('The product with the best average price is ${productList[2]} with \$${bananaAveragePrice.toStringAsFixed(2)}');
    }
  }

  /* 
  BETTER AND SHORTER WAY 
  Map results = {'apple': [totalApple, appleRevenue, appleAveragePrice.toStringAsFixed(2)],
                'orange': [totalOrange, orangeRevenue, orangeAvaragePrice.toStringAsFixed(2)],
                'banana': [totalBanana, bananaRevenue, bananaAveragePrice.toStringAsFixed(2)]};              

  var sortResultsByTotal = Map.fromEntries(results.entries.toList()..sort((e1,e2) => e1.value[0].compareTo(e2.value[0])));
  print('The product with more sales is ${sortResultsByTotal.keys.last} with a total of ${sortResultsByTotal.values.last[0]}');

  var sortResultsByRevenue = Map.fromEntries(results.entries.toList()..sort((e1,e2) => e1.value[1].compareTo(e2.value[1])));
  print('The product with more revenue is ${sortResultsByRevenue.keys.last} with a total of \$${sortResultsByRevenue.values.last[1]}');

  var sortResultsByAverage = Map.fromEntries(results.entries.toList()..sort((e1,e2) => e1.value[2].compareTo(e2.value[2])));
  print('The product with best average price is ${sortResultsByTotal.keys.last}: \$${sortResultsByAverage.values.last[2].toString()}'); 
  */
}
```
