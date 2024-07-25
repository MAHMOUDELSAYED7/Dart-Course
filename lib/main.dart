//! Control Flow part 1 in Dart:
//! if, and switch

void main() {
  // variables
  int number = 7; // The number to check for even or odd
  String dayOfWeek = 'Tuesday'; // The day of the week to check in Switch case

/*
! if Statement:

Purpose: Executes a block of code based on whether a specified condition is true.
Structure:
* if Condition: Checks if the condition is true and executes the corresponding block of code.
* else if (optional): Checks additional conditions if the previous if condition(s) are false.
* else (optional): Executes a block of code if none of the if or else if conditions are true.
Use Case: Ideal for scenarios where you have multiple conditions and want to execute different blocks of code based on which condition is met.
 */

//?---------------------------------------------------------------------------------------

  // Check if the number is even or odd.

  if (number < 0) {
    // If the number is less than zero (negative)
    print('The number $number is negative.'); // Output for negative numbers
  } else if (number == 0) {
    // If the number is exactly zero
    print('The number $number is zero.'); // Output for zero
  } else if (number % 2 == 0) {
    // If the number is positive and divisible by 2 (even)
    print(
        'The number $number is positive and even.'); // Output for positive even numbers
  } else {
    // If the number is positive and not divisible by 2 (odd)
    print(
        'The number $number is positive and odd.'); // Output for positive odd numbers
  }

//?---------------------------------------------------------------------------------------

/*
! switch Statement:

Purpose: Executes different blocks of code based on the value of a variable, with multiple possible execution paths.
Structure:
* switch (variable): Evaluates the value of the variable.
* case value: Defines specific values to compare against the variable. Each case block executes if the variable matches the case value.
* break; Exits the switch block to prevent falling through to subsequent cases.
* default: Provides a fallback block of code to execute if none of the case values match.
Use Case: Ideal for scenarios where you need to handle multiple discrete values of a variable and perform different actions based on those values. */

//?---------------------------------------------------------------------------------------

  // Check the day of the week and print a message.
  switch (dayOfWeek) {
    // Case for Monday
    // This block executes if dayOfWeek is 'Monday'.
    case 'Monday':
      print('Start of the workweek.'); // Output for Monday
      break; // Exits the switch block

    // Case for Tuesday
    // This block executes if dayOfWeek is 'Tuesday'.
    case 'Tuesday':
      print('Second day of the workweek.'); // Output for Tuesday
      break; // Exits the switch block

    // Case for Wednesday
    // This block executes if dayOfWeek is 'Wednesday'.
    case 'Wednesday':
      print('Midweek day.'); // Output for Wednesday
      break; // Exits the switch block

    // Case for Thursday
    // This block executes if dayOfWeek is 'Thursday'.
    case 'Thursday':
      print('Almost the weekend.'); // Output for Thursday
      break; // Exits the switch block

    // Case for Friday
    // This block executes if dayOfWeek is 'Friday'.
    case 'Friday':
      print('Last working day of the week.'); // Output for Friday
      break; // Exits the switch block

    // Case for Saturday and Sunday
    // This block executes if dayOfWeek is 'Saturday' or 'Sunday'.
    case 'Saturday':
    case 'Sunday':
      print('Weekend!'); // Output for Saturday and Sunday
      break; // Exits the switch block

    // Default case
    // This block executes if dayOfWeek does not match any of the above cases.
    default:
      print('Invalid day.'); // Output for any invalid day
      break; // Exits the switch block
  }

//?---------------------------------------------------------------------------------------

/*
! Summary

* if Statement:
 Executes code blocks based on whether conditions are true or false.
 It allows for multiple conditions with if, else if, and else branches to handle various scenarios.

* switch Statement:
 Executes different code blocks based on the exact value of a variable.
 It is useful for handling multiple discrete values with specific case labels and a default fallback.

 */

//?---------------------------------------------------------------------------------------

//! More Examples:
// Example 1

  int temperature = 25; // Temperature in Celsius

  if (temperature > 30) {
    print('It\'s hot outside.');
  } else if (temperature >= 15) {
    print('The weather is warm.');
  } else {
    print('It\'s cold outside.');
  }

//?---------------------------------------------------------------------------------------
// Example 2

  int score = 85; // Student's score

  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 80) {
    print('Grade: B');
  } else if (score >= 70) {
    print('Grade: C');
  } else if (score >= 60) {
    print('Grade: D');
  } else {
    print('Grade: F');
  }

//?---------------------------------------------------------------------------------------
// Example 3

  int month = 3; // Numeric month (1 = January, 2 = February, etc.)

  switch (month) {
    case 1:
      print('January');
      break;
    case 2:
      print('February');
      break;
    case 3:
      print('March');
      break;
    case 4:
      print('April');
      break;
    case 5:
      print('May');
      break;
    case 6:
      print('June');
      break;
    case 7:
      print('July');
      break;
    case 8:
      print('August');
      break;
    case 9:
      print('September');
      break;
    case 10:
      print('October');
      break;
    case 11:
      print('November');
      break;
    case 12:
      print('December');
      break;
    default:
      print('Invalid month number.');
      break;
  }

//?---------------------------------------------------------------------------------------
// Example 4

  String role = 'admin'; // User role

  switch (role) {
    case 'admin':
      print('You have full access.');
      break;
    case 'editor':
      print('You can edit content.');
      break;
    case 'viewer':
      print('You can view content.');
      break;
    default:
      print('Role not recognized.');
      break;
  }

//?---------------------------------------------------------------------------------------
// Example 5

  String status = 'inactive'; // User account status

  if (status == 'active') {
    print('Account is active.');
  } else if (status == 'suspended') {
    print('Account is suspended.');
  } else if (status == 'deactivated') {
    print('Account is deactivated.');
  } else {
    print('Unknown status.');
  }
}
