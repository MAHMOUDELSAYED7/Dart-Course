//! Print in Dart:

void main() {
// The `print` function in Dart is used to display output to the console.
// It takes a value or expression and writes it to the standard output.
// This is commonly used for debugging or providing information during development.

//?---------------------------------------------------------------------------------------

// Example 1: Printing a static string message to the console.
  print('Hello, Dart!');
// Output: Hello, Dart!

//?---------------------------------------------------------------------------------------

// Example 2: Printing a result of an arithmetic operation directly.
  print(5 + 3);
// Output: 8

//?---------------------------------------------------------------------------------------

// Example 3: Printing the result of a method call.
  print('Today is a great day');
// Output: TODAY IS A GREAT DAY

//?---------------------------------------------------------------------------------------

// Example 4: Printing the result of a simple expression.
  print(2 * 7 - 4);
// Output: 10

//?---------------------------------------------------------------------------------------

// Example 5: Printing the result of a complex expression involving multiple operations.
  print((3 + 2) * (7 - 4) / 2);
// Output: 7.5

//?---------------------------------------------------------------------------------------

// Declare a variable using `var` and assign a string value.
// Dart infers the type based on the initial value.
  var greeting = 'Hello, Dart!';

// Use `print` to display the value of the `greeting` variable to the console.
  print(greeting); // Output: Hello, Dart!

//?---------------------------------------------------------------------------------------

// Declare another variable with a numerical value.
  var age = 25;

// Print the numerical value to the console.
  print(age); // Output: 25

//?---------------------------------------------------------------------------------------

// You can also use `print` to concatenate strings and variables.
  var name = 'mahmoud';
  age = 30;
  print('Name: ' + name + ', Age: ' + '$age'); // Output: Name: Alice, Age: 30

// Dart provides string interpolation for a more concise and readable way to include variables in strings.
  print('Name: $name, Age: $age'); // Output: Name: Alice, Age: 30

// You can also print the result of expressions.
  var a = 10;
  var b = 20;
  print(
      'The sum of $a and $b is ${a + b}.'); // Output: The sum of 10 and 20 is 30.

//! Summary:
// - `print` outputs data to the console.
// - The `print` function outputs a given value or expression to the console.
// - `var` allows you to declare variables without specifying a type.
// - Use string interpolation or concatenation to include variable values in the output.
}