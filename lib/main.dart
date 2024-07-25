//! Data Types in Dart:

void main() {
// Dart is a statically-typed language, meaning each variable must have a specific type.
// Here are some of the fundamental data types in Dart:

//! 1. int
// Represents integer values (whole numbers).
  int age = 25;
  print('Age: $age'); // Outputs: Age: 25
  
//?---------------------------------------------------------------------------------------

//! 2. double
// Represents floating-point numbers (numbers with decimal points).
  double height = 5.9;
  print('Height: $height'); // Outputs: Height: 5.9
  
//?---------------------------------------------------------------------------------------

//! 3. num
// A superclass for both `int` and `double`. Can hold either type.
  num weight = 70; // Initially an integer.
  print('Weight: $weight'); // Outputs: Weight: 70
  weight = 70.5; // Can also be a double.
  print('Updated Weight: $weight'); // Outputs: Updated Weight: 70.5
  
//?---------------------------------------------------------------------------------------

//! 4. String
// Represents a sequence of characters (text).
  String name = 'Alice';
  print('Name: $name'); // Outputs: Name: Alice
  
//?---------------------------------------------------------------------------------------

//! 5. bool
// Represents boolean values, either `true` or `false`.
  bool isStudent = true;
  print('Is Student: $isStudent'); // Outputs: Is Student: true
  
//?---------------------------------------------------------------------------------------

//! 6. dynamic
// Represents a variable whose type can change at runtime.
// Avoid using `dynamic` when possible, as it defeats the purpose of static typing.
  dynamic variable = 'Hello';
  print('Dynamic variable: $variable'); // Outputs: Dynamic variable: Hello
  variable = 123;
  print('Dynamic variable: $variable'); // Outputs: Dynamic variable: 123
  
//?---------------------------------------------------------------------------------------

//! 7. Runes
// Represents Unicode code points in a `String`.
// Useful for working with special characters or emojis.
  String emoji = '😊';
  print('Emoji: $emoji'); // Outputs: Emoji: 😊

// You can access the Unicode code points of a string using runes.
  Runes input = Runes('\u{1F600}'); // Unicode for 😀
  print(String.fromCharCodes(input)); // Outputs: 😀
  
//?---------------------------------------------------------------------------------------

//! 8. Object
// The base class for all Dart objects. Any type can be assigned to an `Object` variable.
  Object anyValue = 'Hello';
  print('Object value: $anyValue'); // Outputs: Object value: Hello
  anyValue = 123;
  print('Object value: $anyValue'); // Outputs: Object value: 123
  
//?---------------------------------------------------------------------------------------

//! 9. Symbol
// Represents an operator or identifier declared in a Dart program.
// Useful for reflection, allowing you to refer to identifiers by name.
  
//?---------------------------------------------------------------------------------------

  Symbol libraryName = #myLibrary;
  print('Symbol: $libraryName'); // Outputs: Symbol: Symbol("myLibrary")

// These are the basic data types in Dart, providing a foundation for variable declarations and type safety.

/*
! In summary:

int: Integer values.
double: Floating-point numbers.
num: Can hold either int or double values.
String: Sequence of characters.
bool: Boolean values (true or false).
dynamic: A variable whose type can change at runtime.
Runes: Unicode code points.
Symbol: Operators or identifiers in Dart.
Object: The base class for all Dart objects.
 */
}