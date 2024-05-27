import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_list/di.dart';
import 'package:todo_list/feature/create_todo/bloc/create_todo_item_bloc.dart';
import 'package:todo_list/feature/create_todo/widget/create_todo_screen.dart';
import 'package:todo_list/feature/edit_todo/bloc/update_todo_item_bloc.dart';
import 'package:todo_list/feature/edit_todo/widget/edit_todo_screen.dart';
import 'package:todo_list/feature/todo_list/widget/todo_list_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<TodosRoute>(
  path: '/todos',
  routes: [
    TypedGoRoute<NewTodoRoute>(path: 'new'),
    TypedGoRoute<EditTodoRoute>(path: 'edit'),
  ],
)
class TodosRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const TodoListScreen();
}

class NewTodoRoute extends GoRouteData {
  @override
  Page<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) =>
      BottomSheetPage(
        builder: (context) => BlocProvider.value(
          value: sl<CreateTodoItemBloc>(),
          child: const NewTodoItemScreen(),
        ),
      );
}

class EditTodoRoute extends GoRouteData {
  const EditTodoRoute({required this.todoId});

  final int todoId;

  @override
  Page<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) =>
      BottomSheetPage(
        builder: (context) => BlocProvider.value(
          value: sl<UpdateTodoItemBloc>(),
          child: EditTodoItemScreen(itemId: todoId),
        ),
      );
}

class BottomSheetPage<T> extends Page<T> {
  final WidgetBuilder builder;
  final double scrollControlDisabledMaxHeightRatio;
  final bool isScrollControlled, showDragHandle, enableDrag;

  const BottomSheetPage({
    required this.builder,
    this.scrollControlDisabledMaxHeightRatio = 0.7,
    this.isScrollControlled = true,
    this.showDragHandle = true,
    this.enableDrag = false,
    super.key,
  });

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
        builder: builder,
        useSafeArea: true,
        isScrollControlled: isScrollControlled,
        showDragHandle: showDragHandle,
        enableDrag: enableDrag,
        elevation: 0,
        scrollControlDisabledMaxHeightRatio: scrollControlDisabledMaxHeightRatio,
        settings: this,
      );
}
