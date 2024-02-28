// create a singleton implementation which will write to a common file.

import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

class FileAuditManager {
  static final FileAuditManager _singleton = FileAuditManager._internal();

  FileAuditManager._internal();

  factory FileAuditManager() {
    return _singleton;
  }

  Future<File> get _localFile async {
    final directory = await getApplicationDocumentsDirectory();
    final path = directory.path;
    return File("$path/audit.txt");
  }

  Future<File> logMessage(String msg) async {
    final file = await _localFile;

    String timeStamp = DateFormat("yyy-MM-DD HH:mm:ss").format(DateTime.now());
    String finalMsg = "[$timeStamp]: $msg\n";

    return file.writeAsString(finalMsg, mode: FileMode.append);
  }

  Future<String> readContent() async {
    try {
      final file = await _localFile;

      String contents = await file.readAsString();

      return contents;
    } catch (e) {
      return '';
    }
  }

  Future<String> getFilePath() async {
    final file = await _localFile;
    return file.path;
  }
}
