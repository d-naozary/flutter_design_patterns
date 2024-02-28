import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

// abstract logger class to showcase creation of singleton
//
// wrapper as an extention
abstract class BaseLogger {
  @protected
  late Logger _logger;

  @protected
  DateFormat _dateFormat = DateFormat('H:m:s.S');
  static const appName = "singleton_pattern_example";

  void log(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.info(message, error, stackTrace);
}

// singleton wrapper by extension
class Debuglogger extends BaseLogger {
  static Debuglogger? _instance;

  // private constructor
  Debuglogger._internal() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen(_recordHandler);
    _logger = Logger(BaseLogger.appName);
    debugPrint("<Debuglogger> creation");
    _instance = this;
  }

  // public factory constructor
  // lazy instantation
  factory Debuglogger() => _instance ?? Debuglogger._internal();

  // record handler for the logging message content
  // it is added in the private constructor
  void _recordHandler(LogRecord rec) {
    debugPrint('${_dateFormat.format(rec.time)}: ${rec.message}, ${rec.error}');
  }
}
