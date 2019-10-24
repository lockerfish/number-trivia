import 'dart:io';
import 'package:path/path.dart';

final testDirectory = join(
  Directory.current.path,
  Directory.current.path.endsWith('test') ? '' : 'test',
);
