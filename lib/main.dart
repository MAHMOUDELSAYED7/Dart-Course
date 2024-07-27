//!======================================================================================
//!   Understanding Named Constructor, Anonymous Object, Encapsulation, and `this` vs. `super` Comparison
//!======================================================================================

/*
 ! `this` vs. `super` in Dart
 *
 * `this`:
 * - Refers to the current instance of the class.
 * - Used to access the current class's properties and methods.
 * - Often used to distinguish between instance variables and parameters with the same name.
 *
 * `super`:
 * - Refers to the superclass (parent class) of the current class.
 * - Used to access the properties and methods of the superclass.
 * - Often used in constructor chaining to call the constructor of the superclass.

 ?-------------------------------------------------------------------------------------------------

! Named Constructor in Dart
 *
 * - Named constructors allow you to provide multiple ways to create instances of a class.
 * - They are useful for creating objects with different initialization parameters or from different sources.
 
 ?-------------------------------------------------------------------------------------------------
 ! Anonymous Object in Dart
 *
 * - An anonymous object is an object that is created without assigning it to a variable.
 * - It is useful when you need an object for a single use or for immediate execution.
 
 ?-------------------------------------------------------------------------------------------------

 ! Encapsulation in Dart
 *
 * - Encapsulation is the practice of hiding the internal state and requiring all interaction to be performed through an object's methods.
 * - It helps to protect the integrity of the data and provides a controlled interface for interacting with the object.
 */

//?-------------------------------------------------------------------------------------------------

void main() {
  //! Using the default constructor
  Person p1 = Person(name: 'Alice', age: 30);
  p1.display(); // Output: Name: Alice, Age: 30

//?--------------------------------------------------------------------------------------------------------------------

  //! Using the named constructor
  Person p2 = Person.teenager(name: 'Bob');
  p2.display(); // Output: Name: Bob, Age: 13

//?--------------------------------------------------------------------------------------------------------------------

  //! Creating an anonymous object and using it immediately
  Person(name: 'Charlie', age: 25).display(); // Output: Name: Charlie, Age: 25

//?--------------------------------------------------------------------------------------------------------------------

  //! Creating multiple instances using default constructor
  Person p3 = Person(name: 'David', age: 40);
  p3.display(); // Output: Name: David, Age: 40

//?--------------------------------------------------------------------------------------------------------------------

  //! Using another named constructor example
  Person p4 = Person.teenager(name: 'Emma');
  p4.display(); // Output: Name: Emma, Age: 13

//?--------------------------------------------------------------------------------------------------------------------

  //! Creating an anonymous object of Person
  Person(name: 'Frank', age: 22).display(); // Output: Name: Frank, Age: 22

//?--------------------------------------------------------------------------------------------------------------------

  //! Creating an instance of Car
  Car car1 = Car('Toyota');
  car1.display(); // Output: Car brand: Toyota

  // Accessing the brand through methods
  car1.setBrand('Honda');
  car1.display(); // Output: Car brand: Honda

//?--------------------------------------------------------------------------------------------------------------------

  //! Creating another instance of Car
  Car car2 = Car('Ford');
  car2.display(); // Output: Car brand: Ford

  // Modifying the brand through methods
  car2.setBrand('Chevrolet');
  car2.display(); // Output: Car brand: Chevrolet

//?--------------------------------------------------------------------------------------------------------------------

//! Understanding Anonymous Objects in Dart
// An anonymous object is an object that is created without being assigned to a variable. It is used immediately and then discarded.

  //! Creating an anonymous object of Car
  Car('Nissan').display(); // Output: Car brand: Nissan

//?--------------------------------------------------------------------------------------------------------------------

  //! Creating another anonymous object of Car
  Car('BMW').display(); // Output: Car brand: BMW

//?--------------------------------------------------------------------------------------------------------------------

  // Handling different brands through methods
  Car car3 = Car('Mercedes');
  print(
      'Original Brand: ${car3.getBrand()}'); // Output: Original Brand: Mercedes
  car3.setBrand('Audi');
  print('Updated Brand: ${car3.getBrand()}'); // Output: Updated Brand: Audi

//?--------------------------------------------------------------------------------------------------------------------

  //! Creating an instance of BankAccount
  BankAccount account = BankAccount('John Doe', 500.0);

  // Interacting with the account using its methods
  account.showDetails(); // Output: Account Holder: John Doe, Balance: $500.0
  account.deposit(150.0); // Output: Deposited: $150.0
  account.withdraw(100.0); // Output: Withdrew: $100.0
  account.showDetails(); // Output: Account Holder: John Doe, Balance: $550.0
}

//?--------------------------------------------------------------------------------------------------------------------

/*
! Understanding Named Constructors in Dart
 A named constructor allows you to provide additional constructors for your class. This can be useful
 or providing multipleways to create an object with different initializations.
*/
class Person {
  String name;
  int age;

  // Default constructor
  // Person(this.name, this.age);

  //! Named constructor
  Person({required this.name, required this.age});

  // Named constructor using initializer list
  Person.teenager({required this.name}) : age = 13;

  // Method to display person details
  void display() {
    print('Name: $name, Age: $age');
  }
}

//?--------------------------------------------------------------------------------------------------------------------
//! Encapsulation Example 1
class Car {
  String _brand; // Private property

  // Constructor to initialize the brand
  Car(this._brand);

  // Method to set the brand
  void setBrand(String brand) {
    _brand = brand;
  }

  // Method to get the brand
  String getBrand() {
    return _brand;
  }

  // Method to display car details
  void display() {
    print('Car brand: $_brand');
  }
}

//?--------------------------------------------------------------------------------------------------------------------
//! Encapsulation Example 2

class BankAccount {
  String _accountHolder; // Private variable
  double _balance; // Private variable

  // Constructor
  BankAccount(this._accountHolder, this._balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount}');
    } else {
      print('Invalid deposit amount.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew: \$${amount}');
    } else {
      print('Invalid withdrawal amount.');
    }
  }

  // Method to display account details
  void showDetails() {
    print('Account Holder: $_accountHolder, Balance: \$$_balance');
  }
}

//?--------------------------------------------------------------------------------------------------------------------

/*
! Summary:
- Use `this` to refer to the current instance and distinguish between instance variables and parameters.
- Use `super` to access the superclass's properties, methods, and constructors, enabling code reuse and extension of behavior.
- Named Constructor: Provides additional constructors for a class with different initializations. Use the class name followed by a dot and the constructor name (e.g., `ClassName.constructorName`).
- Anonymous Object: An object created without assigning it to a variable, used immediately and then discarded.
- Encapsulation: Bundling data and methods together within a class and controlling access to data using public methods. Data is typically made private by prefixing the variable name with an underscore (`_`).

These concepts help in organizing and managing code more effectively by providing multiple ways to initialize objects, controlling data access, and using objects on the fly.
*/
