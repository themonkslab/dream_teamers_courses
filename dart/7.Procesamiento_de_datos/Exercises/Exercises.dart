// Exercise 1

import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart data_processing.dart 1_data.csv');
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
final appleAveragePrice = (appleRevenue/totalApple).toStringAsFixed(2);
final bananaAveragePrice = (bananaRevenue/totalBanana).toStringAsFixed(2);
final orangeAvaragePrice = (orangeRevenue/totalOrange).toStringAsFixed(2);

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
    if (totalApple < totalBanana) {
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

//Map results = {'apple': [totalApple, appleRevenue, appleAveragePrice],
//               'orange': [totalOrange, orangeRevenue, orangeAvaragePrice],
//               'banana': [totalBanana, bananaRevenue, bananaAveragePrice]};              

//var sortResultsByTotal = Map.fromEntries(results.entries.toList()..sort((e1,e2) => e1.value[0].compareTo(e2.value[0])));
//print('The product with more sales is ${sortResultsByTotal.keys.last} with a total of ${sortResultsByTotal.values.last[0]}');

//var sortResultsByRevenue = Map.fromEntries(results.entries.toList()..sort((e1,e2) => e1.value[1].compareTo(e2.value[1])));
//print('The product with more revenue is ${sortResultsByRevenue.keys.last} with a total of \$${sortResultsByRevenue.values.last[1]}');

//var sortResultsByAverage = Map.fromEntries(results.entries.toList()..sort((e1,e2) => e1.value[2].compareTo(e2.value[2])));
//print('The product with best average price is ${sortResultsByTotal.keys.last}: \$${sortResultsByAverage.values.last[2].toString()}');


}
  
