//! Control Flow part 2 in Dart:
//! for, while, and do while

void main() {
  //! For Loop
  // The 'for' loop is used to repeat a block of code a specified number of times.
  // Syntax: for (initialization; condition; increment) { code to execute }

  // Example: Print numbers from 0 to 4
  for (int i = 0; i < 5; i++) {
    // Initialization: int i = 0
    // Condition: i < 5
    // Increment: i++
    // This loop will run as long as i is less than 5.
    print('For loop iteration: $i');
  }

//?---------------------------------------------------------------------------------------

  // Example: Print even numbers from 0 to 8
  for (int i = 0; i <= 8; i += 2) {
    print('Even number: $i');
  }

//?---------------------------------------------------------------------------------------

  // Example: Print a countdown from 5 to 1
  for (int i = 5; i > 0; i--) {
    print('Countdown: $i');
  }

//?---------------------------------------------------------------------------------------

  //! For-In Loop
  // The 'for-in' loop is used to iterate over elements in a collection such as a List, Set, or Map.
  // Syntax: for (element in collection) { code to execute }

  // Example: Print each element of a list
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  for (String name in names) {
    // Iterate over each element in the 'names' list.
    print('Name: $name');
  }

//?---------------------------------------------------------------------------------------

  // Example: Print each character in a string
  String message = 'Hello';
  for (var char in message.split('')) {
    print('Character: $char');
  }

//?---------------------------------------------------------------------------------------

  //! While Loop
  // The 'while' loop executes a block of code as long as its condition is true.
  // Syntax: while (condition) { code to execute }

  // Example: Print numbers from 0 to 4
  int count = 0;
  while (count < 5) {
    // Condition: count < 5
    // The loop will continue as long as count is less than 5.
    print('While loop iteration: $count');
    count++; // Increment the counter to eventually break the loop
  }

//?---------------------------------------------------------------------------------------

  // Example: Print even numbers from 0 to 8
  int number = 0;
  while (number <= 8) {
    print('Even number: $number');
    number += 2;
  }

//?---------------------------------------------------------------------------------------

  // Example: Print a countdown from 5 to 1
  int num = 5;
  while (num > 0) {
    print('Countdown: $num');
    num--;
  }

//?---------------------------------------------------------------------------------------

  //! Do-While Loop
  // The 'do-while' loop executes a block of code once before checking the condition.
  // It continues to execute the loop as long as the condition is true.
  // Syntax: do { code to execute } while (condition);

  // Example: Print numbers from 0 to 4
  int index = 0;
  do {
    // The code inside 'do' runs once before the condition is checked.
    print('Do-while loop iteration: $index');
    index++; // Increment the counter
  } while (index < 5); // Condition: index < 5

//?---------------------------------------------------------------------------------------

  // Example: Print even numbers from 0 to 8
  int evenNum = 0;
  do {
    print('Even number: $evenNum');
    evenNum += 2;
  } while (evenNum <= 8);

//?---------------------------------------------------------------------------------------

  // Example: Print a countdown from 5 to 1
  int countdownNum = 5;
  do {
    print('Countdown: $countdownNum');
    countdownNum--;
  } while (countdownNum > 0);

//?---------------------------------------------------------------------------------------

  //! For-Each Loop
  // The 'forEach' loop is used to iterate over elements in a collection and perform an action for each element.
  // Syntax: collection.forEach((element) { code to execute });

  // Example: Print each element of a list
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) {
    // The function inside 'forEach' is executed for each element in the 'numbers' list.
    print('For-each loop element: $number');
  });

//?---------------------------------------------------------------------------------------

  // Example: Print each character in a string
  String greeting = 'Hello';
  greeting.split('').forEach((char) {
    print('Character: $char');
  });

//?---------------------------------------------------------------------------------------
//! More Exmples:

//! Example 1
  // Calculate Fibonacci sequence up to n terms using a while loop

  int n = 10; // Number of terms
  int a = 0; // First term
  int b = 1; // Second term

  print('Fibonacci sequence up to $n terms:');
  int value = 0;
  while (value < n) {
    // Print the current term
    print(a);

    // Update terms
    int next = a + b;
    a = b;
    b = next;

    count++;
  }

//?---------------------------------------------------------------------------------------
//! Example 2
  // Calculate factorial of a number using a for loop

  int val = 5; // val to calculate factorial of
  int factorial = 1; // Initialize factorial result to 1

  for (int i = 1; i <= val; i++) {
    // Multiply factorial by the current val
    factorial *= i;
  }

  print('Factorial of $number is $factorial'); // Output: Factorial of 5 is 120

//?---------------------------------------------------------------------------------------
//! Example 3
  // Check for prime numbers up to a given limit using a for loop

  int limit = 50; // Limit up to which to find prime numbers

  print('Prime numbers up to $limit:');
  for (int num = 2; num <= limit; num++) {
    bool isPrime = true; // Assume num is a prime number

    for (int i = 2; i <= num ~/ 2; i++) {
      //! The ~/ operator performs integer division, discarding the remainder.
      // Check if num is divisible by i
      if (num % i == 0) {
        isPrime = false;
        break; // Exit the loop as num is not a prime
      }
    }

    if (isPrime) {
      // Print if the number is prime
      print(num);
    }
  }
}

//?---------------------------------------------------------------------------------------
//! Summary
// For Loop: Ideal for scenarios where the number of iterations is known. Provides explicit control over initialization, condition, and increment.
// For-In Loop: Simplifies iteration over elements in collections, with less boilerplate than traditional loops.
// While Loop: Executes as long as a specified condition remains true, with the condition checked before each iteration.
// Do-While Loop: Ensures the code block executes at least once before checking the condition, with the condition checked after each iteration.
// For-Each Loop: Convenient for iterating over each element in a collection, often used with lists and sets.
