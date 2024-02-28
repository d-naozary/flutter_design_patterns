// Create a singleton implementation which will generate a sequence of numbers to the callers.
// eager insatantiation
// lazy instantiotion

import 'package:flutter/material.dart';

abstract class Singleton {
  Singleton._privateConstructor();
}

class SequenseGenerator extends Singleton {
  SequenseGenerator._privateConstructor() : super._privateConstructor();

  static final SequenseGenerator _instance =
      SequenseGenerator._privateConstructor();

  factory SequenseGenerator() {
    return _instance;
  }

  int _counter = 0;

  incrementCounter() {
    _counter++;
    debugPrint(_counter.toString());
    return _counter;
  }
}

// 
// class NumberGenerator {
//   static NumberGenerator? _instance;
//   int _lastNumber = 0;
//   List<int> _numbers = [];

//   NumberGenerator._internal() {
//     _numberSequencer();
//     _instance = this;
//   }

//   String _numberSequencer() {
//     _numbers.add(_lastNumber);
//     _lastNumber++;
//     debugPrint(_numbers.toString());

//     return _numbers.toString();
//   }

//   static void incrementNumber(){}

//   factory NumberGenerator() => _instance ?? NumberGenerator._internal();

//   // static NumberGenerator? get instance {
//   //   if (_instance != null) {
//   //     return _instance;
//   //   }
//   //   return NumberGenerator._internal();
//   // }
// }
