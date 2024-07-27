//!======================================================================================
//!   Understanding More about Encapsulation (Getters & Setters)
//!======================================================================================

/*
 * Getters and setters in Dart are special methods used to access and modify
 * the values of private fields in a class. A getter allows you to retrieve the
 * value of a private field, while a setter allows you to update it. These methods
 * provide a way to control how fields are accessed and modified, ensuring 
 * encapsulation and adding logic if needed.
 */
//?--------------------------------------------------------------------------------------------------------------------

void main() {
  //! Creating an instance of Rectangle
  Rectangle rect = Rectangle(5.0, 10.0);

  // Accessing properties using getters
  print('Width: ${rect.width}'); // Output: Width: 5.0
  print('Height: ${rect.height}'); // Output: Height: 10.0
  print('Area: ${rect.area}'); // Output: Area: 50.0

  //! Modifying properties using setters
  rect.width = 7.0;
  rect.height = 12.0;

  // Accessing modified properties using getters
  print('New Width: ${rect.width}'); // Output: New Width: 7.0
  print('New Height: ${rect.height}'); // Output: New Height: 12.0
  print('New Area: ${rect.area}'); // Output: New Area: 84.0

  //! Attempting to set invalid values
  rect.width = -5.0; // Output: Width must be positive.
  rect.height = -10.0; // Output: Height must be positive.
}

//?--------------------------------------------------------------------------------------------------------------------

//! Class representing a Rectangle
class Rectangle {
  double _width; // Private variable to store width
  double _height; // Private variable to store height

  // Constructor to initialize width and height
  Rectangle(this._width, this._height);

//?--------------------------------------------------------------------------------------------------------------------

  //! Getter for width
  // A getter is a method that retrieves the value of a private variable.
  // It allows controlled access to the variable's value from outside the class.
  double get width => _width;

//?--------------------------------------------------------------------------------------------------------------------

  //! Setter for width
  // A setter is a method that allows you to set the value of a private variable.
  // It includes validation logic to ensure the value being assigned is valid.
  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print('Width must be positive.');
    }
  }

//?--------------------------------------------------------------------------------------------------------------------

  //! Getter for height
  double get height => _height;

//?--------------------------------------------------------------------------------------------------------------------

  //! Setter for height
  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print('Height must be positive.');
    }
  }

//?--------------------------------------------------------------------------------------------------------------------

  //! Getter for area (read-only property)
  // This getter calculates and returns the area of the rectangle.
  double get area => _width * _height;
}

//?--------------------------------------------------------------------------------------------------------------------

//! Summary
// Getters retrieve private field values, and setters modify them, enabling controlled access and encapsulation in Dart classes.