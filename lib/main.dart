//!======================================================================================
//! Functions in Dart
//!======================================================================================

/*
! What is a Function?
 A function is a reusable block of code designed to perform a specific task. It can take inputs, process them,
 and return a result. Functions in Dart help organize code by encapsulating behavior into modular units.

! Why Use Functions?
 Code Reusability: Write code once and use it multiple times, reducing redundancy.
 Modularity: Break complex tasks into smaller, manageable pieces, making code easier to understand and maintain.
 Abstraction: Simplify complex logic into high-level operations, hiding implementation details from users.
 Readability: Descriptive function names make code more understandable and easier to debug.
 Maintainability: Update or fix code in one place without affecting other parts.

! Problems Functions Solve
 Duplication: Avoid writing the same code in multiple places.
 Complexity: Manage large codebases by breaking tasks into smaller functions.
 Scalability: Organize code logically as applications grow.
 Error Handling: Isolate and handle errors more effectively.
 */

void main() {
  //! Basic Function Example
  greet('Mahmoud'); // Output: Hello, Mahmoud!

  //?--------------------------------------------------------------------------------------

  //!  Function with Return Value Example
  int sumResult = add(5, 7);
  print(sumResult); // Output: 12

  //?--------------------------------------------------------------------------------------

  //! Function with Optional Positional Parameters Example
  greetWithOptionalTitle('Mahmoud'); // Output: Hello, Mahmoud!
  greetWithOptionalTitle('Mahmoud', 'Mr.'); // Output: Hello, Mr. Mahmoud!

  //! Function with Named Optional Parameters Example
  greetWithNamedParameters(name: 'Carol'); // Output: Hello, Carol!
  greetWithNamedParameters(
      name: 'Carol', title: 'Ms.'); // Output: Hello, Ms. Carol!

  //?--------------------------------------------------------------------------------------

  //! Arrow Function Example
  print(square(4)); // Output: 16

  //?--------------------------------------------------------------------------------------

  //! Higher-Order Function Example
  var quadruple = createMultiplier(4);
  print(quadruple(5)); // Output: 20

  //?--------------------------------------------------------------------------------------

  //! Linear Search Function Example
  List<int> numbers = [5, 3, 7, 2, 8, 1];
  int target = 8;
  int index = linearSearch(numbers, target);

  if (index != -1) {
    print('Target $target found at index $index.');
  } else {
    print('Target $target not found in the list.');
  }

//?--------------------------------------------------------------------------------------

  //! Example usage of determineGrade function
  int score1 = 95;
  int score2 = 85;
  int score3 = 110; // Invalid score
  int score4 = 55;

  print('Score: $score1 - Grade: ${determineGrade(score1)}'); // Output: A
  print('Score: $score2 - Grade: ${determineGrade(score2)}'); // Output: B
  print(
      'Score: $score3 - Grade: ${determineGrade(score3)}'); // Output: Invalid score
  print('Score: $score4 - Grade: ${determineGrade(score4)}'); // Output: F
}

//?--------------------------------------------------------------------------------------

//!======================================================================================
//! Create a Function
//!======================================================================================

//! Define a basic function that takes a name and prints a greeting.
void greet(String name) {
  print('Hello, $name!');
}

//?--------------------------------------------------------------------------------------

//! Define a function that adds two integers and returns the result.
int add(int a, int b) {
  return a + b;
}

//?--------------------------------------------------------------------------------------

//! Define a function with an optional positional parameter.
void greetWithOptionalTitle(String name, [String? title]) {
  if (title != null) {
    print('Hello, $title $name!');
  } else {
    print('Hello, $name!');
  }
}

//?--------------------------------------------------------------------------------------

//! Define a function with named optional parameters.
void greetWithNamedParameters({required String name, String? title}) {
  if (title != null) {
    print('Hello, $title $name!');
  } else {
    print('Hello, $name!');
  }
}

//?--------------------------------------------------------------------------------------

//! Define an arrow function that squares a number.
int square(int x) => x * x;

//?--------------------------------------------------------------------------------------

//! Define a higher-order function that returns a function.
Function createMultiplier(int factor) {
  return (int x) => x * factor;
}

//?--------------------------------------------------------------------------------------

//! More Examples:

//! Linear Search Function
int linearSearch(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i; // Target found, return its index
    }
  }
  return -1; // Target not found, return -1
}

//?--------------------------------------------------------------------------------------

//! Function to determine the letter grade based on numeric score
String determineGrade(int score) {
  // Check if the score is within valid range (0-100)
  if (score < 0 || score > 100) {
    return 'Invalid score'; // Return error message for invalid scores
  }

  // Determine letter grade based on score range
  if (score >= 90) {
    return 'A'; // Excellent grade for scores 90 and above
  } else if (score >= 80) {
    return 'B'; // Good grade for scores between 80 and 89
  } else if (score >= 70) {
    return 'C'; // Average grade for scores between 70 and 79
  } else if (score >= 60) {
    return 'D'; // Below average grade for scores between 60 and 69
  } else {
    return 'F'; // Failing grade for scores below 60
  }
}

//?--------------------------------------------------------------------------------------

/*
! Summary
* Functions in Dart are a fundamental building block that improve code reusability,
* modularity, abstraction, readability, and maintainability.
* They address issues related to code duplication, complexity, scalability,
* and error handling, making code more organized and efficient.
 */
