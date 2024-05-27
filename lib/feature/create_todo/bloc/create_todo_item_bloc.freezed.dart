// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_todo_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTodoItemEvent {
  TodoItemsCompanion get item => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoItemsCompanion item) createTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoItemsCompanion item)? createTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoItemsCompanion item)? createTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoItem value) createTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoItem value)? createTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoItem value)? createTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTodoItemEventCopyWith<CreateTodoItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoItemEventCopyWith<$Res> {
  factory $CreateTodoItemEventCopyWith(
          CreateTodoItemEvent value, $Res Function(CreateTodoItemEvent) then) =
      _$CreateTodoItemEventCopyWithImpl<$Res, CreateTodoItemEvent>;
  @useResult
  $Res call({TodoItemsCompanion item});
}

/// @nodoc
class _$CreateTodoItemEventCopyWithImpl<$Res, $Val extends CreateTodoItemEvent>
    implements $CreateTodoItemEventCopyWith<$Res> {
  _$CreateTodoItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as TodoItemsCompanion,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTodoItemImplCopyWith<$Res>
    implements $CreateTodoItemEventCopyWith<$Res> {
  factory _$$CreateTodoItemImplCopyWith(_$CreateTodoItemImpl value,
          $Res Function(_$CreateTodoItemImpl) then) =
      __$$CreateTodoItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TodoItemsCompanion item});
}

/// @nodoc
class __$$CreateTodoItemImplCopyWithImpl<$Res>
    extends _$CreateTodoItemEventCopyWithImpl<$Res, _$CreateTodoItemImpl>
    implements _$$CreateTodoItemImplCopyWith<$Res> {
  __$$CreateTodoItemImplCopyWithImpl(
      _$CreateTodoItemImpl _value, $Res Function(_$CreateTodoItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$CreateTodoItemImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as TodoItemsCompanion,
    ));
  }
}

/// @nodoc

class _$CreateTodoItemImpl extends _CreateTodoItem {
  const _$CreateTodoItemImpl(this.item) : super._();

  @override
  final TodoItemsCompanion item;

  @override
  String toString() {
    return 'CreateTodoItemEvent.createTodo(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTodoItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTodoItemImplCopyWith<_$CreateTodoItemImpl> get copyWith =>
      __$$CreateTodoItemImplCopyWithImpl<_$CreateTodoItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoItemsCompanion item) createTodo,
  }) {
    return createTodo(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoItemsCompanion item)? createTodo,
  }) {
    return createTodo?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoItemsCompanion item)? createTodo,
    required TResult orElse(),
  }) {
    if (createTodo != null) {
      return createTodo(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoItem value) createTodo,
  }) {
    return createTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoItem value)? createTodo,
  }) {
    return createTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoItem value)? createTodo,
    required TResult orElse(),
  }) {
    if (createTodo != null) {
      return createTodo(this);
    }
    return orElse();
  }
}

abstract class _CreateTodoItem extends CreateTodoItemEvent {
  const factory _CreateTodoItem(final TodoItemsCompanion item) =
      _$CreateTodoItemImpl;
  const _CreateTodoItem._() : super._();

  @override
  TodoItemsCompanion get item;
  @override
  @JsonKey(ignore: true)
  _$$CreateTodoItemImplCopyWith<_$CreateTodoItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateTodoItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(TodoItem item) successful,
    required TResult Function(TodoItem? item, Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(TodoItem item)? successful,
    TResult? Function(TodoItem? item, Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(TodoItem item)? successful,
    TResult Function(TodoItem? item, Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_ProcessingState value) processing,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleState value)? idle,
    TResult? Function(_ProcessingState value)? processing,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_ProcessingState value)? processing,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoItemStateCopyWith<$Res> {
  factory $CreateTodoItemStateCopyWith(
          CreateTodoItemState value, $Res Function(CreateTodoItemState) then) =
      _$CreateTodoItemStateCopyWithImpl<$Res, CreateTodoItemState>;
}

/// @nodoc
class _$CreateTodoItemStateCopyWithImpl<$Res, $Val extends CreateTodoItemState>
    implements $CreateTodoItemStateCopyWith<$Res> {
  _$CreateTodoItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleStateImplCopyWith<$Res> {
  factory _$$IdleStateImplCopyWith(
          _$IdleStateImpl value, $Res Function(_$IdleStateImpl) then) =
      __$$IdleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleStateImplCopyWithImpl<$Res>
    extends _$CreateTodoItemStateCopyWithImpl<$Res, _$IdleStateImpl>
    implements _$$IdleStateImplCopyWith<$Res> {
  __$$IdleStateImplCopyWithImpl(
      _$IdleStateImpl _value, $Res Function(_$IdleStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleStateImpl extends _IdleState {
  const _$IdleStateImpl() : super._();

  @override
  String toString() {
    return 'CreateTodoItemState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(TodoItem item) successful,
    required TResult Function(TodoItem? item, Object? error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(TodoItem item)? successful,
    TResult? Function(TodoItem? item, Object? error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(TodoItem item)? successful,
    TResult Function(TodoItem? item, Object? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_ProcessingState value) processing,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleState value)? idle,
    TResult? Function(_ProcessingState value)? processing,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_ProcessingState value)? processing,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleState extends CreateTodoItemState {
  const factory _IdleState() = _$IdleStateImpl;
  const _IdleState._() : super._();
}

/// @nodoc
abstract class _$$ProcessingStateImplCopyWith<$Res> {
  factory _$$ProcessingStateImplCopyWith(_$ProcessingStateImpl value,
          $Res Function(_$ProcessingStateImpl) then) =
      __$$ProcessingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingStateImplCopyWithImpl<$Res>
    extends _$CreateTodoItemStateCopyWithImpl<$Res, _$ProcessingStateImpl>
    implements _$$ProcessingStateImplCopyWith<$Res> {
  __$$ProcessingStateImplCopyWithImpl(
      _$ProcessingStateImpl _value, $Res Function(_$ProcessingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessingStateImpl extends _ProcessingState {
  const _$ProcessingStateImpl() : super._();

  @override
  String toString() {
    return 'CreateTodoItemState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(TodoItem item) successful,
    required TResult Function(TodoItem? item, Object? error) error,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(TodoItem item)? successful,
    TResult? Function(TodoItem? item, Object? error)? error,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(TodoItem item)? successful,
    TResult Function(TodoItem? item, Object? error)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_ProcessingState value) processing,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleState value)? idle,
    TResult? Function(_ProcessingState value)? processing,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_ProcessingState value)? processing,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _ProcessingState extends CreateTodoItemState {
  const factory _ProcessingState() = _$ProcessingStateImpl;
  const _ProcessingState._() : super._();
}

/// @nodoc
abstract class _$$SuccessfulStateImplCopyWith<$Res> {
  factory _$$SuccessfulStateImplCopyWith(_$SuccessfulStateImpl value,
          $Res Function(_$SuccessfulStateImpl) then) =
      __$$SuccessfulStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoItem item});
}

/// @nodoc
class __$$SuccessfulStateImplCopyWithImpl<$Res>
    extends _$CreateTodoItemStateCopyWithImpl<$Res, _$SuccessfulStateImpl>
    implements _$$SuccessfulStateImplCopyWith<$Res> {
  __$$SuccessfulStateImplCopyWithImpl(
      _$SuccessfulStateImpl _value, $Res Function(_$SuccessfulStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$SuccessfulStateImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as TodoItem,
    ));
  }
}

/// @nodoc

class _$SuccessfulStateImpl extends _SuccessfulState {
  const _$SuccessfulStateImpl({required this.item}) : super._();

  @override
  final TodoItem item;

  @override
  String toString() {
    return 'CreateTodoItemState.successful(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulStateImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulStateImplCopyWith<_$SuccessfulStateImpl> get copyWith =>
      __$$SuccessfulStateImplCopyWithImpl<_$SuccessfulStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(TodoItem item) successful,
    required TResult Function(TodoItem? item, Object? error) error,
  }) {
    return successful(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(TodoItem item)? successful,
    TResult? Function(TodoItem? item, Object? error)? error,
  }) {
    return successful?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(TodoItem item)? successful,
    TResult Function(TodoItem? item, Object? error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_ProcessingState value) processing,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleState value)? idle,
    TResult? Function(_ProcessingState value)? processing,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_ProcessingState value)? processing,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulState extends CreateTodoItemState {
  const factory _SuccessfulState({required final TodoItem item}) =
      _$SuccessfulStateImpl;
  const _SuccessfulState._() : super._();

  TodoItem get item;
  @JsonKey(ignore: true)
  _$$SuccessfulStateImplCopyWith<_$SuccessfulStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoItem? item, Object? error});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$CreateTodoItemStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ErrorStateImpl(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as TodoItem?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl extends _ErrorState {
  const _$ErrorStateImpl({this.item = null, this.error}) : super._();

  @override
  @JsonKey()
  final TodoItem? item;
  @override
  final Object? error;

  @override
  String toString() {
    return 'CreateTodoItemState.error(item: $item, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.item, item) || other.item == item) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, item, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(TodoItem item) successful,
    required TResult Function(TodoItem? item, Object? error) error,
  }) {
    return error(item, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(TodoItem item)? successful,
    TResult? Function(TodoItem? item, Object? error)? error,
  }) {
    return error?.call(item, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(TodoItem item)? successful,
    TResult Function(TodoItem? item, Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(item, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_ProcessingState value) processing,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleState value)? idle,
    TResult? Function(_ProcessingState value)? processing,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_ProcessingState value)? processing,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends CreateTodoItemState {
  const factory _ErrorState({final TodoItem? item, final Object? error}) =
      _$ErrorStateImpl;
  const _ErrorState._() : super._();

  TodoItem? get item;
  Object? get error;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
