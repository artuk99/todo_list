import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/database/todo_list_database.dart';
import 'package:todo_list/feature/todo_list/data/todo_repository.dart';

part 'update_todo_item_bloc.freezed.dart';

@freezed
class UpdateTodoItemEvent with _$UpdateTodoItemEvent {
  const UpdateTodoItemEvent._();

  const factory UpdateTodoItemEvent.updateTodo(TodoItem item) = _UpdateTodoItem;
}

@freezed
class UpdateTodoItemState with _$UpdateTodoItemState {
  const UpdateTodoItemState._();

  const factory UpdateTodoItemState.idle() = _IdleState;

  const factory UpdateTodoItemState.processing() = _ProcessingState;

  const factory UpdateTodoItemState.successful({
    required TodoItem item,
  }) = _SuccessfulState;

  const factory UpdateTodoItemState.error({
    @Default(null) TodoItem? item,
    Object? error,
  }) = _ErrorState;
}

@injectable
final class UpdateTodoItemBloc extends Bloc<UpdateTodoItemEvent, UpdateTodoItemState> {
  UpdateTodoItemBloc({
    required TodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(const UpdateTodoItemState.idle()) {
    on<UpdateTodoItemEvent>(
      (event, emit) => event.map(
        updateTodo: (e) => _updateTodo(e, emit),
      ),
    );
  }

  final TodoRepository _todoRepository;

  Future<void> _updateTodo(
    _UpdateTodoItem event,
    Emitter<UpdateTodoItemState> emit,
  ) async {
    emit(const UpdateTodoItemState.processing());
    try {
      final todo = await _todoRepository.updateTodoItem(event.item);
      emit(UpdateTodoItemState.successful(item: todo));
    } catch (error) {
      emit(UpdateTodoItemState.error(error: error));
      rethrow;
    }
  }
}
