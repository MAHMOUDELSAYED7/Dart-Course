//!======================================================================================
//!   Understanding Instance and Constructor in Dart
//!======================================================================================

void main() {
  //! Creating instances of Person, Product, and Book classes
  Person person1 = Person('Mahmoud', 25);
  Product product1 = Product('Laptop', 999.99, 10);
  Book book1 = Book('1984', 'George Orwell', 9.99);

  // Accessing properties and calling methods for Person
  print(person1.name); // Output: Mahmoud
  print(person1.age); // Output: 25
  person1.display(); // Output: Name: Mahmoud, Age: 25

  //?--------------------------------------------------------------------------------------------------------------------

  //! Accessing properties and calling methods for Product
  print(product1.productName); // Output: Laptop
  print(product1.price); // Output: 999.99
  print(product1.quantity); // Output: 10
  product1.display(); // Output: Product: Laptop, Price: $999.99, Quantity: 10

  //?--------------------------------------------------------------------------------------------------------------------

  //! Accessing properties and calling methods for Book
  print(book1.title); // Output: 1984
  print(book1.author); // Output: George Orwell
  print(book1.price); // Output: 9.99
  book1.display(); // Output: Title: 1984, Author: George Orwell, Price: $9.99
}

//?--------------------------------------------------------------------------------------------------------------------

//! Example 1: Person Class with Constructor
class Person {
  // Properties
  String name;
  int age;

  // Constructor to initialize properties
  Person(this.name, this.age);

  // Method to display person details
  void display() {
    print('Name: $name, Age: $age');
  }
}

//! Example 2: Product Class with Constructor
class Product {
  // Properties
  String productName;
  double price;
  int quantity;

  // Constructor to initialize properties
  Product(this.productName, this.price, this.quantity);

  // Method to display product details
  void display() {
    print(
        'Product: $productName, Price: \$${price.toStringAsFixed(2)}, Quantity: $quantity');
  }
}

//! Example 3: Book Class with Constructor
class Book {
  // Properties
  String title;
  String author;
  double price;

  // Constructor to initialize properties
  Book(this.title, this.author, this.price);

  // Method to display book details
  void display() {
    print(
        'Title: $title, Author: $author, Price: \$${price.toStringAsFixed(2)}');
  }
}


/*
! Summary:
- Instance: A specific object created from a class. It has its own set of properties and methods as defined by the class.
- Constructor: A special method in a class used to initialize the properties of an instance. It has the same name
  as the class and is called automatically when an instance is created.

 By using constructors, you can ensure that your objects are always initialized properly,
 and by creating instances,you can use the functionality defined within your classes.
*/
