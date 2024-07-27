//!======================================================================================
//!   Understanding abstract and polymorphism
//!======================================================================================

/*
! Abstraction:
* simplifies complex systems by hiding implementation details and exposing only essential features.
* It is achieved through abstract classes and methods, which define a common interface without specifying
* how the functionality is implemented. This approach promotes simplicity, code reusability, and encapsulation.

! Polymorphism: allows objects of different classes to be treated as objects of a common superclass,
* enabling a single interface to interact with different data types. It can be achieved through method overriding,
* where a subclass provides a specific implementation of a method defined in its superclass. This allows for flexible
* and reusable code, as the same method can behave differently based on the object's actual class.
* Polymorphism enhances flexibility and maintainability by reducing the need for conditional logic and complex structures.
 */
//?---------------------------------------------------------------------------------------------------

void main() {
  //! Demonstrating polymorphism with shapes
  Shape football = Circle();
  football.draw(); // Outputs Drawing a circle.
  football.describe(); // Outputs "I am a shape."

//?---------------------------------------------------------------------------------------------------

  Shape window = Square(); // Outputs Drawing a square.
  window.draw();
  window.describe(); // Outputs "I am a shape."

//?---------------------------------------------------------------------------------------------------

  List<Shape> shapes = [Circle(), Square(), Triangle(), Rectangle()];

  for (var shape in shapes) {
    shape.draw(); // Outputs specific shape drawing messages
    shape.describe(); // Outputs "I am a shape."
  }

//?---------------------------------------------------------------------------------------------------
  //! Demonstrating polymorphism with vehicles

  Vehicle truck = Truck();
  truck.start(); // Outputs Truck started.
  truck.stop(); // Outputs Truck stopped.

//?---------------------------------------------------------------------------------------------------

  Vehicle motorcycle = Motorcycle();
  motorcycle.start(); // Outputs Motorcycle started.
  motorcycle.stop(); // Outputs Motorcycle stopped.

//?---------------------------------------------------------------------------------------------------

  List<Vehicle> vehicles = [Car(), Truck(), Motorcycle()];

  for (var vehicle in vehicles) {
    vehicle.start(); // Outputs vehicle-specific start messages
    vehicle.stop(); // Outputs vehicle-specific stop messages
  }
}

//?---------------------------------------------------------------------------------------------------
//! Abstract class `Shape` with an abstract method and a regular method

abstract class Shape {
  //! Abstract method that must be implemented by subclasses
  void draw();

  //! Regular method with an implementation
  void describe() {
    print("I am a shape.");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Concrete subclass `Circle` that extends `Shape` and provides an implementation for `draw()`

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a circle.");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Concrete subclass `Square` that extends `Shape` and provides an implementation for `draw()`

class Square extends Shape {
  @override
  void draw() {
    print("Drawing a square.");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Another concrete subclass `Triangle` that extends `Shape` and provides an implementation for `draw()`

class Triangle extends Shape {
  @override
  void draw() {
    print("Drawing a triangle.");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Another concrete subclass `Rectangle` that extends `Shape` and provides an implementation for `draw()`

class Rectangle extends Shape {
  @override
  void draw() {
    print("Drawing a rectangle.");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Abstract class `Vehicle` with multiple abstract methods

abstract class Vehicle {
  //! Abstract method that must be implemented by subclasses
  void start();

  //! Abstract method that must be implemented by subclasses
  void stop();
}

//?---------------------------------------------------------------------------------------------------
//! Concrete subclass `Car` that extends `Vehicle` and provides implementations for `start()` and `stop()`

class Car extends Vehicle {
  @override
  void start() {
    print("Car started.");
  }

  @override
  void stop() {
    print("Car stopped.");
  }
}

//?---------------------------------------------------------------------------------------------------

//! Concrete subclass `Truck` that extends `Vehicle` and provides implementations for `start()` and `stop()`

class Truck extends Vehicle {
  @override
  void start() {
    print("Truck started.");
  }

  @override
  void stop() {
    print("Truck stopped.");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Concrete subclass `Motorcycle` that extends `Vehicle` and provides implementations for `start()` and `stop()`

class Motorcycle extends Vehicle {
  @override
  void start() {
    print("Motorcycle started.");
  }

  @override
  void stop() {
    print("Motorcycle stopped.");
  }
}
//?---------------------------------------------------------------------------------------------------
//! Concrete subclass `Scooter` that extends `Vehicle` and provides implementations for `start()` and `stop()`

class Scooter extends Vehicle {
  @override
  void start() {
    print("Scooter started.");
  }

  @override
  void stop() {
    print("Scooter stopped.");
  }
}
//?---------------------------------------------------------------------------------------------------
/*
! summary

* Abstraction hides complex implementation details by defining abstract classes and methods,
* which must be implemented by subclasses. Polymorphism allows objects of different subclasses
* to be treated as objects of a common superclass, enabling methods to behave differently
* based on the object’s actual class, promoting flexibility and reusability.
 */
