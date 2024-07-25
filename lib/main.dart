//! Variables in Dart:

/*
* Variables are used to store data that can be referenced and manipulated
* throughout a program. Dart supports various ways to declare variables, each with its own specific use case and behavior.
* In this section, we will explore how to declare and use variables in Dart,
* and discuss the differences between `var`, `final`, and `const`.
*/
void main() {
//! var
// `var` is used to declare a variable without specifying its type.
// Dart will infer the type based on the assigned value.

  var name = 'mahmoud'; // Dart infers `name` to be of type `String`.

  var age = 30; // Dart infers `age` to be of type `int`.

// Variables declared with `var` can be reassigned new values.

  name = 'hafeez'; // This is allowed because `var` allows reassignment.

  age = 21; // This is allowed because `var` allows reassignment.

//?---------------------------------------------------------------------------------------

//! final
// `final` is used to declare a variable that can only be set once.
// Once a `final` variable is assigned a value, it cannot be reassigned.

  final city = 'Cairo'; //* Dart infers `city` to be of type `String`.

// Trying to reassign a `final` variable will result in an error.
// city = 'Los Angeles';  // Error: `city` is final and cannot be reassigned.

//?---------------------------------------------------------------------------------------

//! const
// `const` is used to declare compile-time constants.
// The value of a `const` variable must be known at compile time and
// cannot be changed afterwards.

  const pi = 3.14; // Dart infers `pi` to be of type `double`.

// Trying to reassign a `const` variable will result in an error.
// pi = 3.14;  // Error: `pi` is constant and cannot be reassigned.

// `const` variables are implicitly `final`, but they are more restrictive
// because their values must be known at compile time.

//?---------------------------------------------------------------------------------------

//! What is the Differences Between var, final, and const ??

//! 1. `var`
// - Can be reassigned new values.
// - Type is inferred based on the initial value assigned.
// Example:
// var name = 'mahmoud';
//  name = 'hafeez'; // Allowed.

//! 2. `final`
// - Can only be assigned once.
// - Can be assigned a value at runtime.
// Example:
//  final age = 30;
// age = 31;  // Error: `age` is final and cannot be reassigned.

//! 3. `const`
// - Can only be assigned once.
// - Value must be known at compile time (cannot depend on runtime values).
// Example:
//  const pi = 3.14;
// pi = 3.14;  // Error: `pi` is constant and cannot be reassigned.

//! Summary:
// - Use `var` when you need a variable whose value can change.
// - Use `final` for a variable whose value should not change once assigned.
// - Use `const` for compile-time constants.
}