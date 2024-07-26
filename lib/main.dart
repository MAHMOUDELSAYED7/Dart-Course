//!======================================================================================
//! Null Safety in Dart
//!======================================================================================

// TODO : [https://dart.dev/resources/dart-cheatsheet#nullable-variables]

void main() {
  // Null safety ensures that variables cannot be assigned a null value unless explicitly declared.
  // This helps in avoiding null pointer exceptions and makes the code more robust.

  //--------------------------------------------------------------------------------------
  //! Non-Nullable Variables
  //--------------------------------------------------------------------------------------

  // Non-nullable variables must be initialized with a value.
  int nonNullableInt = 10;
  String nonNullableString = "Hello";

  // Print values of non-nullable variables.
  print(nonNullableInt); // Output: 10
  print(nonNullableString); // Output: Hello

  //?--------------------------------------------------------------------------------------

  //! Nullable Variables

  // Nullable variables can be null and must be explicitly marked with a '?'.
  int? nullableInt = null;
  String? nullableString = null;

  // Print values of nullable variables.
  print(nullableInt); // Output: null
  print(nullableString); // Output: null

  // Assigning non-null values to nullable variables.
  nullableInt = 20;
  nullableString = "World";

  // Print updated values of nullable variables.
  print(nullableInt); // Output: 20
  print(nullableString); // Output: World

//?--------------------------------------------------------------------------------------

  //! The 'late' Keyword

  // 'late' is used for non-nullable variables that are initialized later.
  late int nonNullableLateInt;

  // Initializing the variable before use.
  nonNullableLateInt = 30;

  // Print value of the late-initialized variable.
  print(nonNullableLateInt); // Output: 30

//?--------------------------------------------------------------------------------------

  //! Null-Aware Operators (?.)

  // Null-aware access operator (?.): Access a property or method only if the object is not null.
  String? nullableString2 = null;
  print(nullableString2?.length); // Output: null

  nullableString2 = "Hello";
  print(nullableString2.length); // Output: 5

  //?--------------------------------------------------------------------------------------

  //!  Null-coalescing operator (??)

  // Null-coalescing operator (??): Provide a default value if the object is null.
  String? nullableString3 = null;
  print(nullableString3 ?? "Default Value"); // Output: Default Value

  nullableString3 = "World";
  print(nullableString3 ?? "Default Value"); // Output: World

  //?--------------------------------------------------------------------------------------

  //! Null-coalescing assignment operator (??=)

  // Null-coalescing assignment operator (??=): Assign a value only if the variable is null.
  String? nullableString4;
  nullableString4 ??= "Initial Value";
  print(nullableString4); // Output: Initial Value

  nullableString4 ??= "New Value";
  print(nullableString4); // Output: Initial Value (unchanged)

  //?--------------------------------------------------------------------------------------

  //! Examples with Null Safety

  //! Example: Safe String Length Calculation

  String? potentiallyNullString = null;

  // Safe length calculation using null-aware operator.
  int length = potentiallyNullString?.length ?? 0;

  // Print length.
  print(length); // Output: 0

  // Assign a non-null value.
  potentiallyNullString = "Dart";

  // Safe length calculation again.
  length = potentiallyNullString?.length ?? 0;

  // Print length.
  print(length); // Output: 4

  //?--------------------------------------------------------------------------------------

  //! Example: Null Safety with Boolean Values

  // Nullable boolean variable
  bool? isStudent;

  // Assign a value to the boolean variable
  isStudent = null; // This could also be true or false

  // Check if the value is null before using it
  if (isStudent == null) {
    print('The status of being a student is unknown.');
  } else if (isStudent) {
    print('The person is a student.');
  } else {
    print('The person is not a student.');
  }

  // Using the null-aware operator '??' to provide a default value
  bool studentStatus = isStudent ?? false;
  print('Student status: $studentStatus'); // Output: Student status: false

  //?--------------------------------------------------------------------------------------

  // Nullable boolean variable
  bool? isMarried;

  // Assign a value to the boolean variable
  isMarried = null; // This could also be true or false

  // Use the null-aware operator '??' to provide a default value
  bool maritalStatus = isMarried ?? false;
  print('Marital status: $maritalStatus'); // Output: Marital status: false

  //?--------------------------------------------------------------------------------------

  //! Example: Working with Nullable Lists

  // Nullable list of integers.
  List<int>? nullableList = null;

  // Safely access and print the length of the list.
  print(nullableList?.length ?? 0); // Output: 0

  // Assign a non-null value to the list.
  nullableList = [1, 2, 3, 4, 5];

  // Safely access and print the length of the list.
  print(nullableList?.length ?? 0); // Output: 5

  //?--------------------------------------------------------------------------------------

  //! Example: Handling Null Values in Collections

  //! .map() Explanation:
  // Initialize a Map with nullable integer values.
  Map<String, int?> studentGrades = {
    'Mahmoud': 85,
    'Hafeez': null,
    'Hussain': 90
  };

  // Use the map() method to iterate over each entry in the Map.
  studentGrades.entries
      // The map() method applies the provided function to each entry.
      .map((entry) =>
          // Inside the map() method, we define a function that takes each entry
          // and prints the key and value. If the value is null, it prints "No grade" instead.
          print('${entry.key}: ${entry.value ?? "No grade"}'))
      // The toList() method is called to complete the iteration and ensure the side effect (printing) occurs.
      .toList();

  /*
 * Explanation:
 * 1. studentGrades.entries:
 *    - Returns an iterable of MapEntry objects. Each MapEntry contains a key and a value.
 *
 * 2. .map((entry) => ...):
 *    - The map() method takes a function as an argument. This function is applied to each element
 *      in the iterable (in this case, each MapEntry).
 *    - For each entry, the provided function is executed. In this example, the function is
 *      (entry) => print('${entry.key}: ${entry.value ?? "No grade"}').
 *    - This function takes an entry, and prints its key and value. If the value is null,
 *      it prints "No grade" instead.
 *
 * 3. .toList():
 *    - The toList() method converts the iterable returned by map() into a List.
 *    - This ensures the map() method is fully executed, and all print statements are called.
 *    - Note that toList() is necessary here to trigger the map() method's side effect (printing).
 */

  //?--------------------------------------------------------------------------------------

  // Map with nullable values.
  Map<String, int?> grades = {
    "Math": 85,
    "Science": null,
    "English": 90,
  };

  // Print each subject's grade using map.
  grades.entries
      .map((entry) => print('${entry.key}: ${entry.value ?? "No grade"}'))
      .toList();
  // Output:
  // Math: 85
  // Science: No grade
  // English: 90

  //?--------------------------------------------------------------------------------------

  //! Example: Chained Null-Aware Calls

  // Initialize variables with nested fields
  String? addressStreet = null;
  String? addressCity = null;

  // Safely access nested fields using chained null-aware calls.
  print(addressStreet ?? "No address"); // Output: No address

  // Assign a non-null value to nested fields.
  addressStreet = "Main St";
  addressCity = "Springfield";

  // Safely access nested fields using chained null-aware calls.
  print(addressStreet ?? "No address"); // Output: Main St

  //?--------------------------------------------------------------------------------------

  //! Example: Combining Null Safety with Generics

  // List of nullable integers.
  List<int?> numbers = [null, null, 3, null, 5];
  int? firstNonNullNumber;

  // Find the first non-null element.
  for (int? item in numbers) {
    if (item != null) {
      firstNonNullNumber = item;
      break;
    }
  }

  // Print the first non-null number.
  print(firstNonNullNumber); // Output: 3

  //?--------------------------------------------------------------------------------------
}
