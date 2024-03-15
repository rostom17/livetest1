
import 'dart:ffi';

void main(List<String> arguments) {
  List<Map<String, dynamic>> fruits = [
    {'name' : "Apple", 'color' : "Red", 'price' : 2.5},
    {'name' : "Banana", 'color' : "Yellow", 'price' : 1.0},
    {'name' : "Grape", 'color' : "Purple", 'price' : 3.0}
  ];

  displayFruitDetail(fruits);

  applyPriceDiscount(fruits);
}

void displayFruitDetail( fruits){
  print("Original Fruit Details before Discount:;");
  for (var items in fruits){
    print("Name: ${items['name']}, Color: ${items['color']}, Price: \$${items['price']}");
  }
}

void applyPriceDiscount(fruits){
  print("Fruit Details After Applying 10% Discount: ");
  for (var items in fruits){
    double x = items['price'];
    double y = x - (0.1 * x);
    print("Name: ${items['name']}, Color: ${items['color']}, Price: \$$y");
  }
}