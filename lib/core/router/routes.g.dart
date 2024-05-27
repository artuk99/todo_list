// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $todosRoute,
    ];

RouteBase get $todosRoute => GoRouteData.$route(
      path: '/todos',
      factory: $TodosRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'new',
          factory: $NewTodoRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'edit',
          factory: $EditTodoRouteExtension._fromState,
        ),
      ],
    );

extension $TodosRouteExtension on TodosRoute {
  static TodosRoute _fromState(GoRouterState state) => TodosRoute();

  String get location => GoRouteData.$location(
        '/todos',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewTodoRouteExtension on NewTodoRoute {
  static NewTodoRoute _fromState(GoRouterState state) => NewTodoRoute();

  String get location => GoRouteData.$location(
        '/todos/new',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EditTodoRouteExtension on EditTodoRoute {
  static EditTodoRoute _fromState(GoRouterState state) => EditTodoRoute(
        todoId: int.parse(state.uri.queryParameters['todo-id']!),
      );

  String get location => GoRouteData.$location(
        '/todos/edit',
        queryParams: {
          'todo-id': todoId.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
