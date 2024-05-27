// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:todo_list/core/database/todo_list_database.dart' as _i3;
import 'package:todo_list/di.dart' as _i8;
import 'package:todo_list/feature/create_todo/bloc/create_todo_item_bloc.dart'
    as _i7;
import 'package:todo_list/feature/edit_todo/bloc/update_todo_item_bloc.dart'
    as _i6;
import 'package:todo_list/feature/todo_list/data/todo_local_data_source.dart'
    as _i4;
import 'package:todo_list/feature/todo_list/data/todo_repository.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<String>(
      () => appModule.baseUrl,
      instanceName: 'dbName',
    );
    gh.lazySingleton<_i3.TodoDatabase>(
        () => _i3.TodoDatabase(name: gh<String>(instanceName: 'dbName')));
    gh.singleton<_i4.TodoLocalDataSource>(
        () => _i4.TodoListDao(gh<_i3.TodoDatabase>()));
    gh.singleton<_i5.TodoRepository>(() => _i5.TodoRepositoryImpl(
        todoLocalDataSource: gh<_i4.TodoLocalDataSource>()));
    gh.factory<_i6.UpdateTodoItemBloc>(
        () => _i6.UpdateTodoItemBloc(todoRepository: gh<_i5.TodoRepository>()));
    gh.factory<_i7.CreateTodoItemBloc>(
        () => _i7.CreateTodoItemBloc(todoRepository: gh<_i5.TodoRepository>()));
    return this;
  }
}

class _$AppModule extends _i8.AppModule {}
