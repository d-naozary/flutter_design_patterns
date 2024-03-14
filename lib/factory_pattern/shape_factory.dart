import 'dart:math';

import 'package:flutter/material.dart';

enum ShapesEnum { circle, rectangle }

class ShapeBuildContext {
  late Color color;
  late ShapesEnum shapeType;
  late List<Point> vertices;
  late double height;
  late double width;
}

class ShapeFactory {
  ShapeFactory._();
}
