//!======================================================================================
//!  Enums in Dart
//!======================================================================================

// An `enum` (short for "enumeration") is a special data type that defines a set of named values.
// Enums are used to represent a fixed number of constant values, which can improve code readability
// and ensure that only valid values are used. Enums help avoid errors related to incorrect value assignments.

//?---------------------------------------------------------------------------------------------------

void main() {
  //! Example 1: Basic Enum Usage
  Direction currentDirection = Direction.north;
  print(
      "Current direction: $currentDirection"); // Output: Current direction: Direction.north

  switch (currentDirection) {
    case Direction.north:
      print("Heading North.");
      break;
    case Direction.east:
      print("Heading East.");
      break;
    case Direction.south:
      print("Heading South.");
      break;
    case Direction.west:
      print("Heading West.");
      break;
  }

//?---------------------------------------------------------------------------------------------------
  //! Example 2: Enum with Associated Values

  StatusWithDescription currentStatus = StatusWithDescription.approved;
  print(
      "Status: ${currentStatus.getDescription()}"); // Output: Status: Request has been approved

//?---------------------------------------------------------------------------------------------------
  //! Example 3: Enum with Factory Constructor

  String levelString = "admin";
  AccessLevel level = AccessLevel.fromString(levelString);
  print("Access level: $level"); // Output: Access level: AccessLevel.admin

  switch (level) {
    case AccessLevel.guest:
      print("Guest access.");
      break;
    case AccessLevel.user:
      print("User access.");
      break;
    case AccessLevel.admin:
      print("Admin access.");
      break;
  }

//?---------------------------------------------------------------------------------------------------
  //! Example 4: Enum with List of Values and Indexing

  print("Available colors:");
  for (var color in Color.values) {
    print("${color.name} (Index: ${color.index})");
  }

  int index = 2;
  Color colorByIndex = Color.values[index];
  print("Color at index $index: $colorByIndex"); // Output: Color at index 2: Color.blue

//?---------------------------------------------------------------------------------------------------
  //! Example 5: Enum with Set of Values for State Management

  Order myOrder = Order(OrderStatus.shipped);
  myOrder.printStatus(); // Output: Order has been shipped.
}

//?======================================================================================
//?======================================================================================
//! Define the enum

enum Status { pending, approved, rejected }

//?---------------------------------------------------------------------------------------------------
//! Example 1: Basic Enum Usage

enum Direction { north, east, south, west }

//?---------------------------------------------------------------------------------------------------
//! Example 2: Enum with Associated Values (Custom Methods)

enum StatusWithDescription {
  pending("Request is pending"),
  approved("Request has been approved"),
  rejected("Request has been rejected");

  final String description;

  // Enum constructor
  const StatusWithDescription(this.description);

  // Custom method to get description
  String getDescription() => description;
}

//?---------------------------------------------------------------------------------------------------
//! Example 3: Enum with Factory Constructor for String Conversion

enum AccessLevel {
  guest,
  user,
  admin;

  // Factory method to convert a string to an enum value
  static AccessLevel fromString(String value) {
    switch (value.toLowerCase()) {
      case 'guest':
        return AccessLevel.guest;
      case 'user':
        return AccessLevel.user;
      case 'admin':
        return AccessLevel.admin;
      default:
        throw ArgumentError('Invalid access level: $value');
    }
  }
}

//?---------------------------------------------------------------------------------------------------
//! Example 4: Enum with List of Values and Indexing

enum Color { red, green, blue, yellow }

//?---------------------------------------------------------------------------------------------------
//! Example 5: Enum with Set of Values for State Management

enum OrderStatus { placed, shipped, delivered, cancelled }

class Order {
  final OrderStatus status;

  Order(this.status);

  void printStatus() {
    switch (status) {
      case OrderStatus.placed:
        print("Order has been placed.");
        break;
      case OrderStatus.shipped:
        print("Order has been shipped.");
        break;
      case OrderStatus.delivered:
        print("Order has been delivered.");
        break;
      case OrderStatus.cancelled:
        print("Order has been cancelled.");
        break;
    }
  }
}

//?---------------------------------------------------------------------------------------------------
//! Summary
// Enums in Dart define named constant values. They improve code clarity, support iteration, custom methods,
// string conversion, and state management. Examples include basic usage, associated values, and state handling.
//?---------------------------------------------------------------------------------------------------

