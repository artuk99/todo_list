import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final sl = GetIt.instance;

@InjectableInit()
void configureDependencies({required String env}) => sl.init(environment: env);

@module
abstract class AppModule {
  const AppModule();

  @Named('dbName')
  String get baseUrl => 'todo_list';
}
