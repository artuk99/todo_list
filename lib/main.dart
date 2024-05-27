import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:todo_list/app.dart';
import 'package:todo_list/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(env: prod.name);

  runApp(const App());
}
