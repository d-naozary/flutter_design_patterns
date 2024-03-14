import 'dart:math';

import 'package:flutter/material.dart';

abstract class Shape {
  Color _color = Colors.amber;
  String _name = "Shape";
  List<Point> _vertices = <Point>[];

  void draw(Canvas canvas);

  double getArea();

  Color get getColor => _color;
  String get getName => _name;
}

class NullShape extends Shape {
  NullShape() {
    _name = "NullShape";
  }

  @override
  void draw(Canvas canvas) {
    // TODO: implement draw
  }

  @override
  double getArea() {
    return 0.0;
  }
}

class Rectangle extends Shape {
  late double _height;
  late double _width;

  Rectangle(Color color, Point position, double width, double height) {
    _color = color;
    _name = "Rectangle";
    _width = width;
    _height = height;
    _vertices.add(position);
    _vertices.add(Point(position.x + width, position.y));
    _vertices.add(Point(position.x, position.y - height));
    _vertices.add(Point(position.x + width, position.y - height));
  }

  @override
  void draw(Canvas canvas) {
    var paint = Paint()
      ..color = _color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawRect(
        Offset(_vertices[0].x.toDouble(), _vertices[0].y.toDouble()) &
            Size(_width, _height),
        paint);
  }

  @override
  double getArea() {
    return _width * _height;
  }
}

class Circle extends Shape {
  late double _radius;

  Circle(Color color, Point position, double radius) {
    _color = color;
    _radius = radius;
    _vertices.add(position);
  }

  @override
  void draw(Canvas canvas) {
    // TODO: implement draw
  }

  @override
  double getArea() {
    // TODO: implement getArea
    throw UnimplementedError();
  }
}
