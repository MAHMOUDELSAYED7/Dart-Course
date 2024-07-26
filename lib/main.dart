//!======================================================================================
//!  Introduction to Object-Oriented Programming (OOP) in Dart
//!======================================================================================
/*
! What is OOP?
 Object-Oriented Programming (OOP) is a programming paradigm based on the concept of "objects."
 These objects contain data in the form of fields (often known as attributes or properties) and
 code in the form of procedures (often known as methods). OOP is designed to provide a clear
 structure for programs, making it easier to maintain and develop software.

! Advantages of OOP
* Modularity:
 The source code for an object can be written and maintained independently of the source code for other objects.
 Once created, an object can be easily passed around inside the system.

* Reusability:
 Objects can be reused across programs. This promotes code reuse and can lead to a reduction in redundancy.
* Scalability:
 OOP methods make it easier to manage larger software projects.
* Maintainability:
 The separation of concerns within a system (into objects) means that changes to one part of thesystem often do not
 require changes to other parts.
* Abstraction:
 OOP allows for greater flexibility and abstraction. It helps in hiding the complex reality while exposing only the necessary parts.
! Why Use OOP?
* Organized Code: OOP helps in organizing the code better. This makes the development process more manageable.
* Problem-Solving: OOP provides a clear modular structure for programs which is ideal for solving complex problems.
* Real-World Modeling: OOP provides a clear structure that is more aligned with real-world entities and relationships.
 */
//?--------------------------------------------------------------------------------------------------------------------

//!  What is a Class?
// A class is a blueprint for creating objects. It defines a set of properties and methods that are common to all objects of that type.

//! What is an Object?
// An object is an instance of a class. It is a self-contained component that consists of properties and methods to make a particular type of data useful.

//?--------------------------------------------------------------------------------------------------------------------

void main() {
  //! Create an object of the Car class
  Car myCar = Car();

  // Assign values to properties
  myCar.color = 'Red';
  myCar.model = 'Toyota';
  myCar.year = 2020;

  // Accessing properties
  print(myCar.color); // Output: Red

  // Calling methods
  myCar.display(); // Output: Color: Red, Model: Toyota, Year: 2020

//?--------------------------------------------------------------------------------------------------------------------

  //! Create an object of the Student class
  Student student1 = Student();

  // Assign values to properties
  student1.name = 'Mahmoud';
  student1.age = 20;
  student1.grade = 75.0;

  // Accessing properties
  print(student1.name); // Output: Mahmoud
  print(student1.age); // Output: 20
  print(student1.grade); // Output: 75.0

  // Calling methods
  student1.display(); // Output: Name: Mahmoud, Age: 20, Grade: 75.0

  // Checking if the student has passed
  if (student1.hasPassed()) {
    print('${student1.name} has passed.'); // Output: Mahmoud has passed.
  } else {
    print('${student1.name} has not passed.');
  }

  //?--------------------------------------------------------------------------------------------------------------------

  //! Create an object of the Book class
  Book book1 = Book();

  // Assign values to properties
  book1.title = '1984';
  book1.author = 'George Orwell';
  book1.price = 9.99;

  // Access properties and call methods
  book1.display(); // Output: Title: 1984, Author: George Orwell, Price: $9.99
}

//?--------------------------------------------------------------------------------------------------------------------

//! How to Create a Class in Dart

//! Define a class named Car
class Car {
  // Properties of the class
  String? color;
  String? model;
  int? year;

  // Method to display car details
  void display() {
    print('Color: $color, Model: $model, Year: $year');
  }
}

//?--------------------------------------------------------------------------------------------------------------------

//! Define a class named Student
class Student {
  // Properties of the class
  String? name;
  int? age;
  double? grade;

  // Method to display student details
  void display() {
    print('Name: $name, Age: $age, Grade: $grade');
  }

  // Method to check if the student has passed
  bool hasPassed() {
    return (grade ??= 0) >= 60;
  }
}

//?--------------------------------------------------------------------------------------------------------------------

//! Define a class named Book
class Book {
  // Properties
  String? title;
  String? author;
  double? price;

  // Method to display book details
  void display() {
    print('Title: $title, Author: $author, Price: \$$price');
  }
}


/*
! Conclusion
 OOP in Dart, like in many other languages, helps in organizing code into manageable, reusable components.
 By using classes and objects, you can model real-world scenarios, encapsulate data and behaviors,
 and promote code reusability and maintainability.
 */