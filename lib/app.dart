import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_list/core/router/routes.dart';
import 'package:todo_list/core/theme/app_theme.dart';
import 'package:todo_list/di.dart';
import 'package:todo_list/feature/edit_todo/bloc/update_todo_item_bloc.dart';
import 'package:todo_list/feature/todo_list/widget/todo_list_scope.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      initialLocation: '/todos',
      routes: $appRoutes,
    );
  }

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      builder: (context, child) => TodoListScope(
          child: BlocProvider.value(
        value: sl<UpdateTodoItemBloc>(),
        child: child!,
      )),
    );
  }
}
