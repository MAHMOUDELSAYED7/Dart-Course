//!======================================================================================
//!  Complete the missing parts
//!======================================================================================
void main() {
//! 1. Asserting Non-null Value (!)
// In Dart, ! is used to assert that a nullable value is not null. This is known as the null assertion operator.
// When you use !, you are telling Dart that you are confident the value is not null, and it should treat it as non-nullable.

// Declaring a nullable string
  String? name = 'Mahmoud El Sayed';

// Asserting that `name` is not null and printing it
  print(name!); // Output: Mahmoud El Sayed

// If `name` were null, this would throw a runtime error
// String? name = null;
// print(name!); // Throws: Unhandled exception: Null check operator used on a null value

//?--------------------------------------------------------------------------------------

//! 2. Assert: Testing the function
  checkAge(25); // Output: Age is 25
  checkAge(-5); // Throws: AssertionError: Age cannot be negative
  checkPositiveNumber(10); // Valid number
  checkPositiveNumber(-3); // Invalid number
  checkStringLength('Hello'); // Valid string
  checkStringLength('Hi'); // Invalid string length
  checkList([1, 2, 3]); // Valid list
  checkList([]); // Invalid list
  checkNonNullValue('Hello'); // Valid value
  checkNonNullValue(null); // Invalid value

//?--------------------------------------------------------------------------------------
//! 3. Cascade (..)
// The cascade operator (..) allows you to perform multiple operations on the same object,
// in a chain of method calls

  // Define a map
  Map<String, dynamic> person = <String, dynamic>{};

  // Using cascade to set multiple key-value pairs on the same map
  person
    ..['name'] = 'Alice'
    ..['age'] = 30
    ..['city'] = 'New York';

  print(person); // Output: {name: Alice, age: 30, city: New York}

//?--------------------------------------------------------------------------------------

//! 4. Spread Operator (...)
// The spread operator (...) allows you to insert all elements of a collection into another collection.
//It is useful for combining lists or maps.

// Define two lists
  var list1 = [1, 2, 3];
  var list2 = [4, 5, 6];

  // Using the spread operator to combine lists
  var combinedList = [...list1, ...list2];

  // Print the combined list
  print(combinedList); // Output: [1, 2, 3, 4, 5, 6]
}

//?--------------------------------------------------------------------------------------

//! 2. Assert
// The assert statement is used to test if a condition is true at runtime. If the condition is false,
// it throws an AssertionError. It’s primarily used for debugging purposes.
//! Function to check age
void checkAge(int age) {
  // Asserts that age must be non-negative
  assert(age >= 0, 'Age cannot be negative');
  print('Age is $age');
}

//?--------------------------------------------------------------------------------------

//! Function to check if a number is positive using assert
void checkPositiveNumber(int number) {
  // Assert that the number must be positive
  assert(number > 0, 'Number must be positive');
  print('Number is $number');
}

//?--------------------------------------------------------------------------------------

//! Function to check if a string has more than 3 characters
void checkStringLength(String text) {
  // Assert that the string length must be more than 3 characters
  assert(text.length > 3, 'String must have more than 3 characters');
  print('String is: $text');
}

//?--------------------------------------------------------------------------------------

//! Function to check if a list is non-empty
void checkList(List<int> numbers) {
  // Assert that the list must not be empty
  assert(numbers.isNotEmpty, 'List must not be empty');
  print('List contains: ${numbers.length} elements');
}

//?--------------------------------------------------------------------------------------

//! Function to check if a value is non-null
void checkNonNullValue(String? value) {
  // Assert that the value must not be null
  assert(value != null, 'Value must not be null');
  print('Value is: $value');
}

//?--------------------------------------------------------------------------------------

