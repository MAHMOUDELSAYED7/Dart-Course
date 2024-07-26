//! dot operator (`.`) properties and methods in Dart:

void main() {
  //! String Methods --------------------------------->
  
  String text = "Hello World";

  // Length of the string
  print('Length of the string: ${text.length}'); // Output: 11

//?---------------------------------------------------------------------------------------

  // Convert to uppercase
  print('Uppercase: ${text.toUpperCase()}'); // Output: HELLO WORLD

//?---------------------------------------------------------------------------------------

  // Convert to lowercase
  print('Lowercase: ${text.toLowerCase()}'); // Output: hello world

//?---------------------------------------------------------------------------------------

  // Substring extraction
  print('Substring (6, 11): ${text.substring(6)}'); // Output: World
  print('Substring (0, 5): ${text.substring(0, 5)}'); // Output: Hello

//?---------------------------------------------------------------------------------------

  // Replace all occurrences
  print(
      'Replace "World" with "Dart": ${text.replaceAll("World", "Dart")}'); // Output: Hello Dart

//?---------------------------------------------------------------------------------------

  // Split into list
  print('Split by space: ${text.split(" ")}'); // Output: [Hello, World]

//?---------------------------------------------------------------------------------------

  //! Integer Methods --------------------------------->

  int number = 4;

  // Check if the number is even
  print('Is $number even? ${number.isEven}'); // Output: true

//?---------------------------------------------------------------------------------------

  // Check if the number is odd
  print('Is $number odd? ${number.isOdd}'); // Output: false

//?---------------------------------------------------------------------------------------

  // Convert integer to string
  print('Number as string: ${number.toString()}'); // Output: 4

//?---------------------------------------------------------------------------------------

  //! Double Methods --------------------------------->

  double pi = 3.14159;

//?---------------------------------------------------------------------------------------

  // Convert double to string with fixed decimal places
  print('Pi to 2 decimal places: ${pi.toStringAsFixed(2)}'); // Output: 3.14

//?---------------------------------------------------------------------------------------

  // Round the double
  print('Rounded pi: ${pi.round()}'); // Output: 3

//?---------------------------------------------------------------------------------------

  // Ceil the double
  print('Ceil of pi: ${pi.ceil()}'); // Output: 4

//?---------------------------------------------------------------------------------------

  // Floor the double
  print('Floor of pi: ${pi.floor()}'); // Output: 3

//?---------------------------------------------------------------------------------------

  //! List Methods --------------------------------->

  List<int> numbers = [1, 2, 3];

  // Add an element
  numbers.add(4);
  print('List after adding 4: $numbers'); // Output: [1, 2, 3, 4]

//?---------------------------------------------------------------------------------------

  // Remove an element
  numbers.remove(2);
  print('List after removing 2: $numbers'); // Output: [1, 3, 4]

//?---------------------------------------------------------------------------------------

  // Check if the list contains an element
  print('Does the list contain 3? ${numbers.contains(3)}'); // Output: true

//?---------------------------------------------------------------------------------------

  // Sort the list
  numbers.sort();
  print('Sorted list: $numbers'); // Output: [1, 3, 4]

//?---------------------------------------------------------------------------------------

  //! Map Methods --------------------------------->

  Map<String, int> ages = {'Mahmoud': 30, 'Ali': 25};

  // Check if the map contains a key
  print(
      'Map contains key "Mahmoud": ${ages.containsKey('Mahmoud')}'); // Output: true

//?---------------------------------------------------------------------------------------

  // Check if the map contains a value
  print('Map contains value 25: ${ages.containsValue(25)}'); // Output: true

//?---------------------------------------------------------------------------------------

  // Remove a key-value pair
  ages.remove('Ali');
  print('Map after removing Ali: $ages'); // Output: {Mahmoud: 30}

//?---------------------------------------------------------------------------------------

  // ForEach iteration
  ages.forEach((key, value) {
    print('$key is $value years old');
  });
  // Output:
  // Mahmoud is 30 years old

//?---------------------------------------------------------------------------------------
}

//! Summary

// String Methods: Manipulation and querying of strings.
// Integer Methods: Operations specific to integers.
// Double Methods: Formatting and arithmetic for floating-point numbers.
// List Methods: Operations for managing collections of items.
// Map Methods: Handling key-value pairs in a map.
