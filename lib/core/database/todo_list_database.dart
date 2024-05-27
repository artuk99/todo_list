import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/database/connection/open_connection.dart';
import 'package:todo_list/core/database/tables/todo_items.dart';
import 'package:todo_list/feature/todo_list/data/todo_local_data_source.dart';

part 'todo_list_database.g.dart';

@lazySingleton
@DriftDatabase(
  tables: [TodoItems],
  daos: [TodoListDao],
)
class TodoDatabase extends _$TodoDatabase {
  TodoDatabase({@Named('dbName') required String name}) : super(openConnection(name));

  @override
  int get schemaVersion => 1;
}
