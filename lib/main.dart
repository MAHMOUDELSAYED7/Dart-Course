//!======================================================================================
//!   Understanding implements (interfaces) and mixins
//!======================================================================================
/*
! Explanation of `implements` (Interface):
* In Dart, an interface is defined using a class. The `implements` keyword is used to specify that a class must provide
* implementations for all methods declared in the interface. An interface defines a contract that classes must adhere to,
* ensuring that they implement specific methods. Dart does not have a dedicated `interface` keyword; instead,
* any class can act as an interface. This approach promotes code consistency and contract enforcement.

! Explanation of Mixins:
* A mixin is a class that provides methods to be used by other classes without requiring inheritance. Mixins are defined
* using the `mixin` keyword and are applied to classes using the `with` keyword. They enable code reuse across
* multiple class hierarchies by adding functionalities like methods without creating a complex inheritance structure.
* Multiple mixins can be combined to provide diverse behaviors to a single class.
*/
//?---------------------------------------------------------------------------------------------------

void main() {
  //! Demonstrating `implements` with Animal
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.eat(); // Output: Dog is eating.
  myDog.sleep(); // Output: Dog is sleeping.

  myCat.eat(); // Output: Cat is eating.
  myCat.sleep(); // Output: Cat is sleeping.

//?---------------------------------------------------------------------------------------------------
  //! Demonstrating advanced `implements` with Drawable and Resizable

  Drawable rectangle = Rectangle();
  Drawable circle = Circle();

  rectangle
      .draw(); // Output: Drawing a rectangle with width 1.0 and height 1.0.
  circle.draw(); // Output: Drawing a circle with radius 1.0.

  (rectangle as Resizable)
      .resize(2); // Output: Rectangle resized to width 2.0 and height 2.0.
  (circle as Resizable).resize(3); // Output: Circle resized to radius 3.0.

//?---------------------------------------------------------------------------------------------------
  //! Demonstrating mixins with Duck

  Duck duck = Duck();

  duck.fly(); // Output: Flying.
  duck.swim(); // Output: Swimming.
  duck.quack(); // Output: Quacking.

//?---------------------------------------------------------------------------------------------------
  //! Demonstrating mixins with Service

  Service service = Service();
  service.performAction();
  // Output:
  // [LOG]: Action started.
  // [ERROR]: Exception: Simulated exception.
  // [LOG]: Action ended.

//?---------------------------------------------------------------------------------------------------
  //! Demonstrating combining `implements` and mixins with Car

  Car car = Car();
  car.start(); // Output: Car started.
  car.navigateTo("Home"); // Output: Navigating to Home.
  car.setTemperature(22); // Output: Setting temperature to 22°C.
  car.stop(); // Output: Car stopped.
}

//?---------------------------------------------------------------------------------------------------
//?---------------------------------------------------------------------------------------------------
//! Simple Example: `implements` (Interface)

// Define an abstract class `Animal` with two abstract methods `eat` and `sleep`.
// This class acts as an interface that other classes will need to implement.
abstract class Animal {
  void eat();
  void sleep();
}

// Implement the `Animal` interface in the `Dog` class.
// The `Dog` class must provide concrete implementations for the `eat` and `sleep` methods.
class Dog implements Animal {
  @override
  void eat() {
    print("Dog is eating.");
  }

  @override
  void sleep() {
    print("Dog is sleeping.");
  }
}

// Implement the `Animal` interface in the `Cat` class.
// The `Cat` class also provides its own concrete implementations for the `eat` and `sleep` methods.
class Cat implements Animal {
  @override
  void eat() {
    print("Cat is eating.");
  }

  @override
  void sleep() {
    print("Cat is sleeping.");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Advanced Example: `implements` (Interface) with Multiple Interfaces

// Define two abstract classes `Drawable` and `Resizable`.
// These classes act as interfaces that other classes can implement.
abstract class Drawable {
  void draw();
}

abstract class Resizable {
  void resize(double factor);
}

// Implement both `Drawable` and `Resizable` interfaces in the `Rectangle` class.
// The `Rectangle` class must provide concrete implementations for all methods from both interfaces.
class Rectangle implements Drawable, Resizable {
  double width = 1.0;
  double height = 1.0;

  @override
  void draw() {
    print("Drawing a rectangle with width $width and height $height.");
  }

  @override
  void resize(double factor) {
    width *= factor;
    height *= factor;
    print("Rectangle resized to width $width and height $height.");
  }
}

// Implement both `Drawable` and `Resizable` interfaces in the `Circle` class.
// The `Circle` class must provide its own concrete implementations for methods from both interfaces.
class Circle implements Drawable, Resizable {
  double radius = 1.0;

  @override
  void draw() {
    print("Drawing a circle with radius $radius.");
  }

  @override
  void resize(double factor) {
    radius *= factor;
    print("Circle resized to radius $radius.");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Simple Example: Mixins

// Define two mixins `Flyable` and `Swimmable` that provide specific functionalities.
mixin Flyable {
  void fly() {
    print("Flying.");
  }
}

mixin Swimmable {
  void swim() {
    print("Swimming.");
  }
}

// The `Duck` class uses both `Flyable` and `Swimmable` mixins.
// This allows the `Duck` class to use the methods defined in the mixins without inheritance.
class Duck with Flyable, Swimmable {
  void quack() {
    print("Quacking.");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Advanced Example: Mixins with Additional Functionality

// Define two mixins `Logger` and `ErrorHandler` that add logging and error handling functionalities.
mixin Logger {
  void log(String message) {
    print("[LOG]: $message");
  }
}

mixin ErrorHandler {
  void handleError(String error) {
    print("[ERROR]: $error");
  }
}

// The `Service` class uses both `Logger` and `ErrorHandler` mixins.
// It demonstrates how to use mixins to add functionalities like logging and error handling.
class Service with Logger, ErrorHandler {
  void performAction() {
    try {
      log("Action started.");
      // Simulating some action
      throw Exception("Simulated exception.");
    } catch (e) {
      handleError(e.toString());
    } finally {
      log("Action ended.");
    }
  }
}

//?---------------------------------------------------------------------------------------------------
//! Combining `implements` and Mixins

// Define an abstract class `Vehicle` with methods `start` and `stop`.
// This class acts as an interface that the `Car` class must implement.
abstract class Vehicle {
  void start();
  void stop();
}

// Define mixins `GPSNavigation` and `ClimateControl` to provide additional functionalities.
mixin GPSNavigation {
  void navigateTo(String location) {
    print("Navigating to $location.");
  }
}

mixin ClimateControl {
  void setTemperature(int temperature) {
    print("Setting temperature to $temperature°C.");
  }
}

// The `Car` class implements the `Vehicle` interface and uses both `GPSNavigation` and `ClimateControl` mixins.
// It must provide implementations for `start` and `stop` methods while inheriting functionality from the mixins.
class Car with GPSNavigation, ClimateControl implements Vehicle {
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
/*
! Summary
* an interface is a class that defines a contract with methods that other classes must implement using the implements keyword.
* Dart does not have a dedicated interface keyword, so any class can act as an interface, promoting consistency. Mixins,
* defined with the mixin keyword, provide methods for reuse across classes without inheritance and
* can be combined to add various functionalities.
 */
//?---------------------------------------------------------------------------------------------------