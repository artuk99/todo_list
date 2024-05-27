import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/database/todo_list_database.dart';
import 'package:todo_list/core/utils/extensions/context_extension.dart';
import 'package:todo_list/di.dart';
import 'package:todo_list/feature/todo_list/bloc/todo_list_bloc.dart';
import 'package:todo_list/feature/todo_list/data/todo_repository.dart';

class TodoListScope extends StatefulWidget {
  const TodoListScope({
    required this.child,
    super.key,
  });

  final Widget child;

  static TodoListScopeState of(BuildContext context, {bool listen = true}) =>
      context.inhOf<_TodoListInherited>(listen: listen).state;

  @override
  State<TodoListScope> createState() => TodoListScopeState();
}

class TodoListScopeState extends State<TodoListScope> {
  late final TodoListBloc _todoListBloc;
  late final StreamSubscription<void> _todoListBlocSubscription;
  var _todoListBlocState = const TodoListState.loading();
  TodoListState get blocState => _todoListBlocState;

  final _todoItems = <TodoItem>[];
  UnmodifiableListView<TodoItem> get todoList => UnmodifiableListView(_todoItems);

  @override
  void initState() {
    super.initState();

    _todoListBloc = TodoListBloc(todoRepository: sl<TodoRepository>());
    _todoListBlocSubscription = _todoListBloc.stream.listen(_didStateChanged);
  }

  @override
  void dispose() {
    _todoListBlocSubscription.cancel();
    super.dispose();
  }

  void _didStateChanged(TodoListState state) {
    if (state != _todoListBlocState) {
      setState(() {
        _todoListBlocState = state;
        _todoItems
          ..clear()
          ..addAll(state.todos);
      });
    }
  }

  void fetchTodoList() => _todoListBloc.add(const TodoListEvent.fetchTodoItems());

  void deleteTodo(TodoItem todoItem) =>
      _todoListBloc.add(TodoListEvent.deleteTodoItem(todoItem: todoItem));

  Future<void> changeRank(int oldIndex, int newIndex) async {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    final newRank = _todoItems[newIndex].rank;
    final item = _todoItems.removeAt(oldIndex);
    setState(() {
      _todoItems.insert(newIndex, item);
    });

    _todoListBloc.add(TodoListEvent.changeTodoRank(todoItem: item.copyWith(rank: newRank)));
  }

  @override
  Widget build(BuildContext context) {
    return _TodoListInherited(
      todoList: _todoItems,
      state: this,
      child: widget.child,
    );
  }
}

class _TodoListInherited extends InheritedWidget {
  const _TodoListInherited({
    required this.todoList,
    required this.state,
    required super.child,
  });

  final List<TodoItem> todoList;
  final TodoListScopeState state;

  @override
  bool updateShouldNotify(_TodoListInherited oldWidget) =>
      const DeepCollectionEquality().equals(todoList, oldWidget.todoList);
}
