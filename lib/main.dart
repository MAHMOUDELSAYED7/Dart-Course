//! Arithmetic, Relational, and Logical Operations in Dart:

void main() {
//! Arithmetic Operations
// These operators perform basic mathematical calculations.

  int a = 10;
  int b = 5;

// Addition: Adds two numbers.
  int sum = a + b;
  print('Addition: $a + $b = $sum'); // Output: Addition: 10 + 5 = 15

//?---------------------------------------------------------------------------------------

// Subtraction: Subtracts the second number from the first.
  int difference = a - b;
  print(
      'Subtraction: $a - $b = $difference'); // Output: Subtraction: 10 - 5 = 5

//?---------------------------------------------------------------------------------------

// Multiplication: Multiplies two numbers.
  int product = a * b;
  print(
      'Multiplication: $a * $b = $product'); // Output: Multiplication: 10 * 5 = 50

//?---------------------------------------------------------------------------------------

// Division: Divides the first number by the second.
  double quotient = a / b;
  print('Division: $a / $b = $quotient'); // Output: Division: 10 / 5 = 2.0

//?---------------------------------------------------------------------------------------

// Modulus: Finds the remainder of the division of the first number by the second.
  int remainder = a % b;
  print('Modulus: $a % $b = $remainder'); // Output: Modulus: 10 % 5 = 0

//?---------------------------------------------------------------------------------------

//! Relational Operations
// These operators compare two values and return a boolean result.

  bool isEqual = a == b;
  print('Equal: $a == $b -> $isEqual'); // Output: Equal: 10 == 5 -> false

//?---------------------------------------------------------------------------------------

  bool isNotEqual = a != b;
  print(
      'Not Equal: $a != $b -> $isNotEqual'); // Output: Not Equal: 10 != 5 -> true

//?---------------------------------------------------------------------------------------

  bool isGreater = a > b;
  print('Greater: $a > $b -> $isGreater'); // Output: Greater: 10 > 5 -> true

//?---------------------------------------------------------------------------------------

  bool isLess = a < b;
  print('Less: $a < $b -> $isLess'); // Output: Less: 10 < 5 -> false

//?---------------------------------------------------------------------------------------

  bool isGreaterOrEqual = a >= b;
  print(
      'Greater or Equal: $a >= $b -> $isGreaterOrEqual'); // Output: Greater or Equal: 10 >= 5 -> true

//?---------------------------------------------------------------------------------------

  bool isLessOrEqual = a <= b;
  print(
      'Less or Equal: $a <= $b -> $isLessOrEqual'); // Output: Less or Equal: 10 <= 5 -> false

//?---------------------------------------------------------------------------------------

//! Logical Operations
// These operators perform logical operations on boolean values.

  bool trueValue = true;
  bool falseValue = false;

// AND: Returns true if both operands are true.
  bool andResult = trueValue && falseValue;
  print(
      'AND: $trueValue && $falseValue -> $andResult'); // Output: AND: true && false -> false

//?---------------------------------------------------------------------------------------

// OR: Returns true if at least one operand is true.
  bool orResult = trueValue || falseValue;
  print(
      'OR: $trueValue || $falseValue -> $orResult'); // Output: OR: true || false -> true

//?---------------------------------------------------------------------------------------

// NOT: Inverts the boolean value.
  bool notResult = !trueValue;
  print('NOT: !$trueValue -> $notResult'); // Output: NOT: !true -> false

//?---------------------------------------------------------------------------------------

//! Summary:
// - Arithmetic operations perform basic math calculations: addition, subtraction, multiplication, division, and modulus.
// - Relational operations compare values and yield boolean results: equality, inequality, greater than, less than, greater or equal, and less or equal.
// - Logical operations work with boolean values to perform AND, OR, and NOT operations.
}
