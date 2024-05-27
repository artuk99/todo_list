import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_list/core/database/todo_list_database.dart';
import 'package:todo_list/feature/todo_list/data/todo_repository.dart';

part 'todo_list_bloc.freezed.dart';

@freezed
class TodoListEvent with _$TodoListEvent {
  const TodoListEvent._();

  const factory TodoListEvent.fetchTodoItems() = _FetchTodoItems;

  const factory TodoListEvent.deleteTodoItem({required TodoItem todoItem}) = _DeleteTodoItem;

  const factory TodoListEvent.changeTodoRank({required TodoItem todoItem}) = _ChangeTodoRank;
}

@freezed
class TodoListState with _$TodoListState {
  const TodoListState._();

  const factory TodoListState.loading({
    @Default(<TodoItem>[]) List<TodoItem> todos,
  }) = _LoadingState;

  const factory TodoListState.loaded({
    required List<TodoItem> todos,
  }) = _LoadedState;

  const factory TodoListState.error({
    @Default(<TodoItem>[]) List<TodoItem> todos,
    Object? error,
  }) = _ErrorState;
}

final class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc({
    required TodoRepository todoRepository,
    TodoListState initialState = const TodoListState.loading(),
  })  : _todoRepository = todoRepository,
        super(initialState) {
    on<TodoListEvent>(
      (event, emit) => event.map(
        fetchTodoItems: (e) => _fetchTodos(e, emit),
        deleteTodoItem: (e) => _deleteTodo(e, emit),
        changeTodoRank: (e) => _changeTodoRank(e, emit),
      ),
    );

    _todoRepository.todoEvents.listen((event) {
      final items = List<TodoItem>.from(state.todos);
      if (event.type == EventType.created) {
        items.add(event.item);
      }
      if (event.type == EventType.updated) {
        final index = items.indexWhere((element) => element.id == event.item.id);
        items[index] = event.item;
      }
      // ignore: invalid_use_of_visible_for_testing_member
      emit(TodoListState.loaded(todos: items));
    });
  }

  final TodoRepository _todoRepository;

  Future<void> _fetchTodos(
    _FetchTodoItems event,
    Emitter<TodoListState> emit,
  ) async {
    emit(const TodoListState.loading());
    try {
      final todos = await _todoRepository.getTodoItems();
      emit(TodoListState.loaded(todos: todos));
    } catch (error) {
      emit(TodoListState.error(error: error));
      rethrow;
    }
  }

  Future<void> _deleteTodo(
    _DeleteTodoItem event,
    Emitter<TodoListState> emit,
  ) async {
    final items = List<TodoItem>.from(state.todos)..remove(event.todoItem);
    emit(state.copyWith(todos: items));
    try {
      await _todoRepository.deleteTodoItem(event.todoItem);
    } catch (error) {
      emit(TodoListState.error(error: error));
      rethrow;
    }
  }

  Future<void> _changeTodoRank(
    _ChangeTodoRank event,
    Emitter<TodoListState> emit,
  ) async {
    try {
      await _todoRepository.updateTodoItem(event.todoItem);
      final todos = await _todoRepository.getTodoItems();
      emit(TodoListState.loaded(todos: todos));
    } catch (error) {
      emit(TodoListState.error(error: error));
      rethrow;
    }
  }
}
