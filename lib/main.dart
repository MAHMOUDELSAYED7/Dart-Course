//!======================================================================================
//!   Understanding Inheritance in Dart
//!======================================================================================

/*
 ! Inheritance allows a class to inherit properties and methods from another class.
  The class that inherits is called the subclass (or child class), and 
  the class being inherited from is called the superclass (or parent class).
*/

//?--------------------------------------------------------------------------------------------------------------------

void main() {
  //! Creating an instance of Dog
  Dog dog = Dog('Buddy', 3, 'Golden Retriever');
  dog.display(); // Output: Name: Buddy, Age: 3
  dog.makeSound(); // Output: Buddy barks.
  dog.displayBreed(); // Output: Buddy is a Golden Retriever.

//?--------------------------------------------------------------------------------------------------------------------

  //! Creating an instance of Cat
  Cat cat = Cat('Whiskers', 2, 'black');
  cat.display(); // Output: Name: Whiskers, Age: 2
  cat.makeSound(); // Output: Whiskers meows.
  cat.displayColor(); // Output: Whiskers is black in color.
}

//?--------------------------------------------------------------------------------------------------------------------

//! Superclass (Base Class or Parent Class)
class Animal {
  // Properties
  String name;
  int age;

  // Constructor to initialize properties
  Animal(this.name, this.age);

  // Method to display animal details
  void display() {
    print('Name: $name, Age: $age');
  }

  // Method to make a sound
  void makeSound() {
    print('$name makes a sound.');
  }
}

//?--------------------------------------------------------------------------------------------------------------------

//! Subclass (Derived Class or Child Class) extending Animal
class Dog extends Animal {
  // Additional property specific to Dog
  String breed;

  // Constructor to initialize properties of both Dog and Animal
  Dog(String name, int age, this.breed) : super(name, age);

  // Overriding the makeSound method
  @override
  void makeSound() {
    print('$name barks.');
  }

  // Additional method specific to Dog
  void displayBreed() {
    print('$name is a $breed.');
  }
}

//?--------------------------------------------------------------------------------------------------------------------

//! Another Subclass (Derived Class or Child Class) extending Animal
class Cat extends Animal {
  // Additional property specific to Cat
  String color;

  // Constructor to initialize properties of both Cat and Animal
  Cat(String name, int age, this.color) : super(name, age);

  // Overriding the makeSound method
  @override
  void makeSound() {
    print('$name meows.');
  }

  // Additional method specific to Cat
  void displayColor() {
    print('$name is $color in color.');
  }
}

//?--------------------------------------------------------------------------------------------------------------------

/*
! Summary:
- Inheritance: A mechanism where one class (child or derived class) inherits propertiesand methods from another class (parent or base class).
- Extending a class: Use the `extends` keyword to create a subclass.
- Overriding: Redefining a method in the derived class that exists in the base class, using the `@override` annotation.
- super constructor: Calls the constructor of the base class from the derived class constructor,
  ensuring proper initialization of inherited properties.

  Inheritance promotes code reusability, allowing you to build on existing code and extend functionality without rewriting it.
  By using inheritance, we can create a hierarchical relationship between classes, promote code reusability,
  and allow for the extension and customization of existing functionality.
*/
