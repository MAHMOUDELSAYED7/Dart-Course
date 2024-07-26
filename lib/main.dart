//! Collection Data Types in Dart:

void main() {
  //! List
  // A List in Dart is an ordered collection of items. Each item can be accessed by its index, starting from 0.

  // Initialize a list with integers
  List<int> numbers = [1, 2, 3, 4, 5];

  // Print specific elements of the list
  print('First element: ${numbers[0]}'); // Output: 1 (element at index 0)
  print('Second element: ${numbers[1]}'); // Output: 2 (element at index 1)
  print('List length: ${numbers.length}'); // Output: 5 (total number of elements in the list)

  // Adding and Removing Elements
  numbers.add(6); // Append 6 to the end of the list
  numbers.insert(1, 10); // Insert 10 at index 1
  numbers.remove(2); // Remove the first occurrence of 2
  numbers.removeAt(2); // Remove the element at index 2

  // Print the modified list and its length
  print('Modified list: $numbers'); // Output: [1, 10, 6, 4, 5]
  print('List length: ${numbers.length}'); // Output: 5

  // Accessing and Modifying Elements
  numbers[0] = 100; // Change the first element to 100
  print('Updated first element: ${numbers[0]}'); // Output: 100
  print('Complete list: $numbers'); // Output: [100, 10, 6, 4, 5]

  //? ---------------------------------------------------------------------------------------

  //! Set
  // A Set in Dart is an unordered collection of unique items. It does not allow duplicate values.

  // Initialize a set with unique integers
  Set<int> uniqueNumbers = {1, 2, 3, 4, 5};

  // Print elements of the set
  print('Contains 1: ${uniqueNumbers.contains(1)}'); // Output: true (set contains 1)
  print('Set length: ${uniqueNumbers.length}'); // Output: 5 (total number of unique elements in the set)

  // Adding and Removing Elements
  uniqueNumbers.add(6); // Add 6 to the set
  uniqueNumbers.add(2); // Adding duplicate 2 has no effect
  uniqueNumbers.remove(3); // Remove the value 3

  // Print the modified set and its length
  print('Modified set: $uniqueNumbers'); // Output: {1, 2, 4, 5, 6}
  print('Set length: ${uniqueNumbers.length}'); // Output: 5

  //? ---------------------------------------------------------------------------------------

  //! Map
  // A Map in Dart is a collection of key-value pairs. Each key is unique, and it maps to a specific value.

  // Initialize a map with string keys and integer values
  Map<String, int> ageMap = {'Mahmoud': 30, 'Hafeez': 25, 'Alfy': 35};

  // Print values associated with specific keys
  print('Mahmoud\'s age: ${ageMap['Mahmoud']}'); // Output: 30 (value associated with key 'Mahmoud')
  print('Hafeez\'s age: ${ageMap['Hafeez']}'); // Output: 25 (value associated with key 'Hafeez')
  print('Map length: ${ageMap.length}'); // Output: 3 (total number of key-value pairs in the map)

  // Adding and Removing Key-Value Pairs
  ageMap['Hussain'] = 40; // Add a new entry for 'Hussain'
  ageMap['Hafeez'] = 26; // Update Hafeez's age to 26
  ageMap.remove('Mahmoud'); // Remove the entry for 'Mahmoud'

  // Print the modified map and its length
  print('Modified map: $ageMap'); // Output: {Hafeez: 26, Alfy: 35, Hussain: 40}
  print('Map length: ${ageMap.length}'); // Output: 3

  // Accessing Values
  int mahmoudAge = ageMap['Mahmoud'] ??
      0; // Retrieve Mahmoud's age, default to 0 if not found
  print(
      'Mahmoud\'s age: $mahmoudAge'); // Output: 0 (since 'Mahmoud' was removed)
}

//? ---------------------------------------------------------------------------------------

//! Summary
// List: Ordered collection of items accessed by index. Supports duplicates.
// Set: Unordered collection of unique items. Does not support duplicates.
// Map: Collection of key-value pairs. Each key is unique and maps to a specific value.
