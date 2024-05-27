import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/database/todo_list_database.dart';
import 'package:todo_list/feature/todo_list/data/todo_repository.dart';

part 'create_todo_item_bloc.freezed.dart';

@freezed
class CreateTodoItemEvent with _$CreateTodoItemEvent {
  const CreateTodoItemEvent._();

  const factory CreateTodoItemEvent.createTodo(TodoItemsCompanion item) = _CreateTodoItem;
}

@freezed
class CreateTodoItemState with _$CreateTodoItemState {
  const CreateTodoItemState._();

  const factory CreateTodoItemState.idle() = _IdleState;

  const factory CreateTodoItemState.processing() = _ProcessingState;

  const factory CreateTodoItemState.successful({
    required TodoItem item,
  }) = _SuccessfulState;

  const factory CreateTodoItemState.error({
    @Default(null) TodoItem? item,
    Object? error,
  }) = _ErrorState;
}

@injectable
final class CreateTodoItemBloc extends Bloc<CreateTodoItemEvent, CreateTodoItemState> {
  CreateTodoItemBloc({
    required TodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(const CreateTodoItemState.idle()) {
    on<CreateTodoItemEvent>(
      (event, emit) => event.map(
        createTodo: (e) => _createTodo(e, emit),
      ),
    );
  }

  final TodoRepository _todoRepository;

  Future<void> _createTodo(
    _CreateTodoItem event,
    Emitter<CreateTodoItemState> emit,
  ) async {
    emit(const CreateTodoItemState.processing());
    try {
      final todo = await _todoRepository.createTodoItem(event.item);
      emit(CreateTodoItemState.successful(item: todo));
    } catch (error) {
      emit(CreateTodoItemState.error(error: error));
      rethrow;
    }
  }
}
