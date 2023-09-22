//! BAD SYNTAX

class Shape {
  String type;

  Shape(this.type);
}

class AreaCalculator {
  double calculateArea(Shape shape) {
    if (shape.type == 'circle') {
      //? calculate area of circle
    } else if (shape.type == 'square') {
      //? calculate area of square
    }
    //? ...

    throw UnimplementedError();
  }
}

// * GOOD SYNTAX

abstract class IShape {
  double calculateArea();
}

class Circle extends IShape {
  double radius;
  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends IShape {
  double side;
  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}
