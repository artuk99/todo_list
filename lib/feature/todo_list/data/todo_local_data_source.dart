import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/database/tables/todo_items.dart';
import 'package:todo_list/core/database/todo_list_database.dart';

part 'todo_local_data_source.g.dart';

abstract interface class TodoLocalDataSource {
  Future<List<TodoItem>> getTodoItems();

  Future<TodoItem> insertTodoItem(TodoItemsCompanion todoItem);

  Future<void> deleteTodoItem(TodoItem todoItem);

  Future<TodoItem> updateTodoItem(TodoItem todoItem);
}

@Singleton(as: TodoLocalDataSource)
@DriftAccessor(tables: [TodoItems])
final class TodoListDao extends DatabaseAccessor<TodoDatabase>
    with _$TodoListDaoMixin
    implements TodoLocalDataSource {
  TodoListDao(super.attachedDatabase);

  @override
  Future<List<TodoItem>> getTodoItems() =>
      (select(todoItems)..orderBy([(t) => OrderingTerm(expression: t.rank)])).get();

  @override
  Future<TodoItem> insertTodoItem(TodoItemsCompanion todoItem) async {
    final lastTodoItem = await (select(todoItems)
          ..orderBy([(t) => OrderingTerm.desc(t.rank)])
          ..limit(1))
        .getSingleOrNull();

    return into(todoItems).insertReturning(
      todoItem.copyWith(rank: Value<int>((lastTodoItem?.rank ?? 0) + 1)),
    );
  }

  @override
  Future<void> deleteTodoItem(TodoItem todoItem) => transaction(() async {
        await (delete(todoItems)..whereSamePrimaryKey(todoItem)).go();

        final items =
            await (select(todoItems)..where((t) => t.rank.isBiggerThanValue(todoItem.rank))).get();

        if (items.isNotEmpty) {
          await batch((batch) {
            batch.replaceAll(
              todoItems,
              items.map<TodoItem>((t) => t.copyWith(rank: t.rank - 1)),
            );
          });
        }
      });

  @override
  Future<TodoItem> updateTodoItem(TodoItem todoItem) => transaction(() async {
        final item = await (select(todoItems)..whereSamePrimaryKey(todoItem)).getSingle();

        final itemsToShift = await (select(todoItems)
              ..where((t) => t.rank.isBetweenValues(
                    todoItem.rank > item.rank ? item.rank + 1 : todoItem.rank,
                    todoItem.rank > item.rank ? todoItem.rank : item.rank - 1,
                  )))
            .get();

        await batch((batch) {
          batch.replaceAll(
            todoItems,
            itemsToShift.map<TodoItem>(
                (t) => t.copyWith(rank: t.rank + (todoItem.rank > item.rank ? -1 : 1))),
          );
          batch.replace(todoItems, todoItem);
        });

        return todoItem;
      });
}
