// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodoItems,
    required TResult Function(TodoItem todoItem) deleteTodoItem,
    required TResult Function(TodoItem todoItem) changeTodoRank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTodoItems,
    TResult? Function(TodoItem todoItem)? deleteTodoItem,
    TResult? Function(TodoItem todoItem)? changeTodoRank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodoItems,
    TResult Function(TodoItem todoItem)? deleteTodoItem,
    TResult Function(TodoItem todoItem)? changeTodoRank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodoItems value) fetchTodoItems,
    required TResult Function(_DeleteTodoItem value) deleteTodoItem,
    required TResult Function(_ChangeTodoRank value) changeTodoRank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTodoItems value)? fetchTodoItems,
    TResult? Function(_DeleteTodoItem value)? deleteTodoItem,
    TResult? Function(_ChangeTodoRank value)? changeTodoRank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodoItems value)? fetchTodoItems,
    TResult Function(_DeleteTodoItem value)? deleteTodoItem,
    TResult Function(_ChangeTodoRank value)? changeTodoRank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListEventCopyWith<$Res> {
  factory $TodoListEventCopyWith(
          TodoListEvent value, $Res Function(TodoListEvent) then) =
      _$TodoListEventCopyWithImpl<$Res, TodoListEvent>;
}

/// @nodoc
class _$TodoListEventCopyWithImpl<$Res, $Val extends TodoListEvent>
    implements $TodoListEventCopyWith<$Res> {
  _$TodoListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchTodoItemsImplCopyWith<$Res> {
  factory _$$FetchTodoItemsImplCopyWith(_$FetchTodoItemsImpl value,
          $Res Function(_$FetchTodoItemsImpl) then) =
      __$$FetchTodoItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTodoItemsImplCopyWithImpl<$Res>
    extends _$TodoListEventCopyWithImpl<$Res, _$FetchTodoItemsImpl>
    implements _$$FetchTodoItemsImplCopyWith<$Res> {
  __$$FetchTodoItemsImplCopyWithImpl(
      _$FetchTodoItemsImpl _value, $Res Function(_$FetchTodoItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTodoItemsImpl extends _FetchTodoItems {
  const _$FetchTodoItemsImpl() : super._();

  @override
  String toString() {
    return 'TodoListEvent.fetchTodoItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTodoItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodoItems,
    required TResult Function(TodoItem todoItem) deleteTodoItem,
    required TResult Function(TodoItem todoItem) changeTodoRank,
  }) {
    return fetchTodoItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTodoItems,
    TResult? Function(TodoItem todoItem)? deleteTodoItem,
    TResult? Function(TodoItem todoItem)? changeTodoRank,
  }) {
    return fetchTodoItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodoItems,
    TResult Function(TodoItem todoItem)? deleteTodoItem,
    TResult Function(TodoItem todoItem)? changeTodoRank,
    required TResult orElse(),
  }) {
    if (fetchTodoItems != null) {
      return fetchTodoItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodoItems value) fetchTodoItems,
    required TResult Function(_DeleteTodoItem value) deleteTodoItem,
    required TResult Function(_ChangeTodoRank value) changeTodoRank,
  }) {
    return fetchTodoItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTodoItems value)? fetchTodoItems,
    TResult? Function(_DeleteTodoItem value)? deleteTodoItem,
    TResult? Function(_ChangeTodoRank value)? changeTodoRank,
  }) {
    return fetchTodoItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodoItems value)? fetchTodoItems,
    TResult Function(_DeleteTodoItem value)? deleteTodoItem,
    TResult Function(_ChangeTodoRank value)? changeTodoRank,
    required TResult orElse(),
  }) {
    if (fetchTodoItems != null) {
      return fetchTodoItems(this);
    }
    return orElse();
  }
}

abstract class _FetchTodoItems extends TodoListEvent {
  const factory _FetchTodoItems() = _$FetchTodoItemsImpl;
  const _FetchTodoItems._() : super._();
}

/// @nodoc
abstract class _$$DeleteTodoItemImplCopyWith<$Res> {
  factory _$$DeleteTodoItemImplCopyWith(_$DeleteTodoItemImpl value,
          $Res Function(_$DeleteTodoItemImpl) then) =
      __$$DeleteTodoItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoItem todoItem});
}

/// @nodoc
class __$$DeleteTodoItemImplCopyWithImpl<$Res>
    extends _$TodoListEventCopyWithImpl<$Res, _$DeleteTodoItemImpl>
    implements _$$DeleteTodoItemImplCopyWith<$Res> {
  __$$DeleteTodoItemImplCopyWithImpl(
      _$DeleteTodoItemImpl _value, $Res Function(_$DeleteTodoItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoItem = null,
  }) {
    return _then(_$DeleteTodoItemImpl(
      todoItem: null == todoItem
          ? _value.todoItem
          : todoItem // ignore: cast_nullable_to_non_nullable
              as TodoItem,
    ));
  }
}

/// @nodoc

class _$DeleteTodoItemImpl extends _DeleteTodoItem {
  const _$DeleteTodoItemImpl({required this.todoItem}) : super._();

  @override
  final TodoItem todoItem;

  @override
  String toString() {
    return 'TodoListEvent.deleteTodoItem(todoItem: $todoItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoItemImpl &&
            (identical(other.todoItem, todoItem) ||
                other.todoItem == todoItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoItemImplCopyWith<_$DeleteTodoItemImpl> get copyWith =>
      __$$DeleteTodoItemImplCopyWithImpl<_$DeleteTodoItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodoItems,
    required TResult Function(TodoItem todoItem) deleteTodoItem,
    required TResult Function(TodoItem todoItem) changeTodoRank,
  }) {
    return deleteTodoItem(todoItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTodoItems,
    TResult? Function(TodoItem todoItem)? deleteTodoItem,
    TResult? Function(TodoItem todoItem)? changeTodoRank,
  }) {
    return deleteTodoItem?.call(todoItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodoItems,
    TResult Function(TodoItem todoItem)? deleteTodoItem,
    TResult Function(TodoItem todoItem)? changeTodoRank,
    required TResult orElse(),
  }) {
    if (deleteTodoItem != null) {
      return deleteTodoItem(todoItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodoItems value) fetchTodoItems,
    required TResult Function(_DeleteTodoItem value) deleteTodoItem,
    required TResult Function(_ChangeTodoRank value) changeTodoRank,
  }) {
    return deleteTodoItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTodoItems value)? fetchTodoItems,
    TResult? Function(_DeleteTodoItem value)? deleteTodoItem,
    TResult? Function(_ChangeTodoRank value)? changeTodoRank,
  }) {
    return deleteTodoItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodoItems value)? fetchTodoItems,
    TResult Function(_DeleteTodoItem value)? deleteTodoItem,
    TResult Function(_ChangeTodoRank value)? changeTodoRank,
    required TResult orElse(),
  }) {
    if (deleteTodoItem != null) {
      return deleteTodoItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodoItem extends TodoListEvent {
  const factory _DeleteTodoItem({required final TodoItem todoItem}) =
      _$DeleteTodoItemImpl;
  const _DeleteTodoItem._() : super._();

  TodoItem get todoItem;
  @JsonKey(ignore: true)
  _$$DeleteTodoItemImplCopyWith<_$DeleteTodoItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTodoRankImplCopyWith<$Res> {
  factory _$$ChangeTodoRankImplCopyWith(_$ChangeTodoRankImpl value,
          $Res Function(_$ChangeTodoRankImpl) then) =
      __$$ChangeTodoRankImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoItem todoItem});
}

/// @nodoc
class __$$ChangeTodoRankImplCopyWithImpl<$Res>
    extends _$TodoListEventCopyWithImpl<$Res, _$ChangeTodoRankImpl>
    implements _$$ChangeTodoRankImplCopyWith<$Res> {
  __$$ChangeTodoRankImplCopyWithImpl(
      _$ChangeTodoRankImpl _value, $Res Function(_$ChangeTodoRankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoItem = null,
  }) {
    return _then(_$ChangeTodoRankImpl(
      todoItem: null == todoItem
          ? _value.todoItem
          : todoItem // ignore: cast_nullable_to_non_nullable
              as TodoItem,
    ));
  }
}

/// @nodoc

class _$ChangeTodoRankImpl extends _ChangeTodoRank {
  const _$ChangeTodoRankImpl({required this.todoItem}) : super._();

  @override
  final TodoItem todoItem;

  @override
  String toString() {
    return 'TodoListEvent.changeTodoRank(todoItem: $todoItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTodoRankImpl &&
            (identical(other.todoItem, todoItem) ||
                other.todoItem == todoItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTodoRankImplCopyWith<_$ChangeTodoRankImpl> get copyWith =>
      __$$ChangeTodoRankImplCopyWithImpl<_$ChangeTodoRankImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTodoItems,
    required TResult Function(TodoItem todoItem) deleteTodoItem,
    required TResult Function(TodoItem todoItem) changeTodoRank,
  }) {
    return changeTodoRank(todoItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTodoItems,
    TResult? Function(TodoItem todoItem)? deleteTodoItem,
    TResult? Function(TodoItem todoItem)? changeTodoRank,
  }) {
    return changeTodoRank?.call(todoItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTodoItems,
    TResult Function(TodoItem todoItem)? deleteTodoItem,
    TResult Function(TodoItem todoItem)? changeTodoRank,
    required TResult orElse(),
  }) {
    if (changeTodoRank != null) {
      return changeTodoRank(todoItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodoItems value) fetchTodoItems,
    required TResult Function(_DeleteTodoItem value) deleteTodoItem,
    required TResult Function(_ChangeTodoRank value) changeTodoRank,
  }) {
    return changeTodoRank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTodoItems value)? fetchTodoItems,
    TResult? Function(_DeleteTodoItem value)? deleteTodoItem,
    TResult? Function(_ChangeTodoRank value)? changeTodoRank,
  }) {
    return changeTodoRank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodoItems value)? fetchTodoItems,
    TResult Function(_DeleteTodoItem value)? deleteTodoItem,
    TResult Function(_ChangeTodoRank value)? changeTodoRank,
    required TResult orElse(),
  }) {
    if (changeTodoRank != null) {
      return changeTodoRank(this);
    }
    return orElse();
  }
}

abstract class _ChangeTodoRank extends TodoListEvent {
  const factory _ChangeTodoRank({required final TodoItem todoItem}) =
      _$ChangeTodoRankImpl;
  const _ChangeTodoRank._() : super._();

  TodoItem get todoItem;
  @JsonKey(ignore: true)
  _$$ChangeTodoRankImplCopyWith<_$ChangeTodoRankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoListState {
  List<TodoItem> get todos => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todos) loading,
    required TResult Function(List<TodoItem> todos) loaded,
    required TResult Function(List<TodoItem> todos, Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todos)? loading,
    TResult? Function(List<TodoItem> todos)? loaded,
    TResult? Function(List<TodoItem> todos, Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todos)? loading,
    TResult Function(List<TodoItem> todos)? loaded,
    TResult Function(List<TodoItem> todos, Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res, TodoListState>;
  @useResult
  $Res call({List<TodoItem> todos});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res, $Val extends TodoListState>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoItem> todos});
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$LoadingStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl extends _LoadingState {
  const _$LoadingStateImpl({final List<TodoItem> todos = const <TodoItem>[]})
      : _todos = todos,
        super._();

  final List<TodoItem> _todos;
  @override
  @JsonKey()
  List<TodoItem> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoListState.loading(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todos) loading,
    required TResult Function(List<TodoItem> todos) loaded,
    required TResult Function(List<TodoItem> todos, Object? error) error,
  }) {
    return loading(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todos)? loading,
    TResult? Function(List<TodoItem> todos)? loaded,
    TResult? Function(List<TodoItem> todos, Object? error)? error,
  }) {
    return loading?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todos)? loading,
    TResult Function(List<TodoItem> todos)? loaded,
    TResult Function(List<TodoItem> todos, Object? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState extends TodoListState {
  const factory _LoadingState({final List<TodoItem> todos}) =
      _$LoadingStateImpl;
  const _LoadingState._() : super._();

  @override
  List<TodoItem> get todos;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoItem> todos});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$LoadedStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl extends _LoadedState {
  const _$LoadedStateImpl({required final List<TodoItem> todos})
      : _todos = todos,
        super._();

  final List<TodoItem> _todos;
  @override
  List<TodoItem> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoListState.loaded(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todos) loading,
    required TResult Function(List<TodoItem> todos) loaded,
    required TResult Function(List<TodoItem> todos, Object? error) error,
  }) {
    return loaded(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todos)? loading,
    TResult? Function(List<TodoItem> todos)? loaded,
    TResult? Function(List<TodoItem> todos, Object? error)? error,
  }) {
    return loaded?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todos)? loading,
    TResult Function(List<TodoItem> todos)? loaded,
    TResult Function(List<TodoItem> todos, Object? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends TodoListState {
  const factory _LoadedState({required final List<TodoItem> todos}) =
      _$LoadedStateImpl;
  const _LoadedState._() : super._();

  @override
  List<TodoItem> get todos;
  @override
  @JsonKey(ignore: true)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoItem> todos, Object? error});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? error = freezed,
  }) {
    return _then(_$ErrorStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl extends _ErrorState {
  const _$ErrorStateImpl(
      {final List<TodoItem> todos = const <TodoItem>[], this.error})
      : _todos = todos,
        super._();

  final List<TodoItem> _todos;
  @override
  @JsonKey()
  List<TodoItem> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'TodoListState.error(todos: $todos, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todos) loading,
    required TResult Function(List<TodoItem> todos) loaded,
    required TResult Function(List<TodoItem> todos, Object? error) error,
  }) {
    return error(todos, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todos)? loading,
    TResult? Function(List<TodoItem> todos)? loaded,
    TResult? Function(List<TodoItem> todos, Object? error)? error,
  }) {
    return error?.call(todos, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todos)? loading,
    TResult Function(List<TodoItem> todos)? loaded,
    TResult Function(List<TodoItem> todos, Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(todos, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends TodoListState {
  const factory _ErrorState({final List<TodoItem> todos, final Object? error}) =
      _$ErrorStateImpl;
  const _ErrorState._() : super._();

  @override
  List<TodoItem> get todos;
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
