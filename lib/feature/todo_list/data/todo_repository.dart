import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:todo_list/core/database/todo_list_database.dart';
import 'package:todo_list/feature/todo_list/data/todo_local_data_source.dart';

enum EventType {
  created,
  updated;
}

typedef TodoEvent = ({EventType type, TodoItem item});

abstract interface class TodoRepository {
  Stream<TodoEvent> get todoEvents;

  Future<List<TodoItem>> getTodoItems();
  Future<TodoItem> createTodoItem(TodoItemsCompanion todoItem);
  Future<void> deleteTodoItem(TodoItem todoItem);
  Future<TodoItem> updateTodoItem(TodoItem todoItem);
}

@Singleton(as: TodoRepository)
final class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl({required TodoLocalDataSource todoLocalDataSource})
      : _todoLocalDataSource = todoLocalDataSource;

  final TodoLocalDataSource _todoLocalDataSource;

  final _streamController = StreamController<TodoEvent>();
  @override
  Stream<TodoEvent> get todoEvents => _streamController.stream;

  @override
  Future<List<TodoItem>> getTodoItems() => _todoLocalDataSource.getTodoItems();

  @override
  Future<TodoItem> createTodoItem(TodoItemsCompanion todoItem) async {
    final item = await _todoLocalDataSource.insertTodoItem(todoItem);
    _streamController.add((type: EventType.created, item: item));
    return item;
  }

  @override
  Future<void> deleteTodoItem(TodoItem todoItem) => _todoLocalDataSource.deleteTodoItem(todoItem);

  @override
  Future<TodoItem> updateTodoItem(TodoItem todoItem) async {
    final item = await _todoLocalDataSource.updateTodoItem(todoItem);
    _streamController.add((type: EventType.updated, item: item));
    return item;
  }
}
