//!======================================================================================
//!  Exception Handling  in Dart
//!======================================================================================

void main() {
  //! Demonstrating throwing and handling exceptions

  //! check Positive Number Handling
  try {
    // This will throw an exception as the number is negative
    checkPositiveNumber(-5);
  } catch (e) {
    // Handle the exception thrown by checkPositiveNumber
    print('Caught an exception: $e');
  }

//?--------------------------------------------------------------------------------------

  //! Handling division by zero
  // This will catch the division by zero error and print a message
  divideNumbers(10, 0);

//?--------------------------------------------------------------------------------------

  //! Parsing integers with error handling
  // This will successfully parse the number
  parseInt(numberStr: '123');
  // This will cause a FormatException and be handled accordingly
  parseInt(numberStr: 'abc');

//?--------------------------------------------------------------------------------------

  //! Demonstrating file operation with finally
  // This will simulate opening a file, throw an exception, and then ensure cleanup
  fileOperation();

//?--------------------------------------------------------------------------------------

  //! Rethrowing exceptions for outer handling
  try {
    handleError();
  } catch (e) {
    // Handle the rethrown exception
    print('Caught rethrown exception: $e');
  }

//?--------------------------------------------------------------------------------------

  //! Define some variables, with one possibly being null
  String? studentName = 'Mahmoud'; // This is not null
  String? studentGrade = null; // This is null

  // Call the function to print student details
  printStudentDetails(name: studentName, grade: studentGrade);
}

//?--------------------------------------------------------------------------------------

//!======================================================================================
//! Exception Handling Demonstration
//!======================================================================================

//! 1. Throwing Exceptions
void checkPositiveNumber(int number) {
  if (number < 0) {
    // Throw an exception if the number is negative
    throw FormatException('Number must be positive.');
  } else {
    print('Number is positive.');
  }
}

// checkPositiveNumber(-5):
// Calls the function with a negative number, which will throw an exception.
// The exception is caught and handled in the main function.

//?--------------------------------------------------------------------------------------

//! 2. Handling Exceptions with try and catch
void divideNumbers(int a, int b) {
  try {
    // Attempt to divide two numbers
    double result = a / b;
    print('Result: $result');
  } catch (e) {
    // Catch any exception and print an error message
    print('Error: Division by zero is not allowed.');
  }
}

// divideNumbers(10, 0):
// Demonstrates handling division by zero, where the function
// catches the error and prints an appropriate message.

//?--------------------------------------------------------------------------------------

//! 3. Catching Specific Exceptions
void parseInt({required String numberStr}) {
  try {
    int number = int.parse(numberStr);
    print('Parsed number: $number');
  } on FormatException catch (e) {
    // Handle specific FormatException
    print('FormatException: Invalid number format. ${e.message}');
  } catch (e) {
    // Handle any other exceptions
    print('Unexpected error: $e');
  }
}
// parseInt('123') and parseInt('abc'):
// The first call parses a valid integer, while the second call causes a FormatException
// due to invalid input, demonstrating specific exception handling.

//?--------------------------------------------------------------------------------------

//! 4. Using finally for Cleanup
void fileOperation() {
  try {
    print('Opening file...');
    // Code that may throw an exception
    throw Exception('File not found');
  } catch (e) {
    // Catch and print the exception
    print('Caught an exception: $e');
  } finally {
    // This block runs whether an exception occurs or not
    print('Closing file...');
  }
}
// fileOperation():
// Simulates a file operation that throws an exception,
// followed by cleanup in the finally block.

//?--------------------------------------------------------------------------------------

//! 5. Rethrowing Exceptions
void handleError() {
  try {
    throw Exception('Something went wrong');
  } catch (e) {
    // Handle and print the exception
    print('Handling exception: $e');
    rethrow; // Rethrow the exception to be handled by outer try-catch
  }
}
// handleError():
// Demonstrates rethrowing an exception after handling it locally.
// The outer try-catch block in main catches the rethrown exception.

//?--------------------------------------------------------------------------------------

//! 6. Function to print student details using null assertion
void printStudentDetails({String? name, String? grade}) {
  try {
    // Use null assertion to ensure the name and grade are not null
    // The null assertion operator (!) is used here to tell Dart that the value will not be null
    String nonNullName = name!;
    String nonNullGrade = grade!;

    // Print the student's name and grade
    print('Student Name: $nonNullName');
    print('Student Grade: $nonNullGrade');
  } catch (e) {
    // Catch any exception that occurs due to null value or other issues
    print('Error: $e');
  }
}

//?--------------------------------------------------------------------------------------

//! Summary 
//* Exceptions in Dart manage errors by allowing you to throw,catch, and handle errors gracefully.
//* Use `throw` to signal errors, `try-catch` to handle them, `finally` for cleanup, and `rethrow`
//* to pass exceptions up the stack. This ensures robust error handling and maintains program stability.
