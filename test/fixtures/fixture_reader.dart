import 'dart:io';

import '../util.dart';

String fixture(String name) =>
    File('$testDirectory/fixtures/$name').readAsStringSync();
