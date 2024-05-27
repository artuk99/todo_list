import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/core/database/todo_list_database.dart';
import 'package:todo_list/core/router/routes.dart';
import 'package:todo_list/feature/edit_todo/bloc/update_todo_item_bloc.dart';
import 'package:todo_list/feature/todo_list/widget/todo_list_scope.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final _isButtonVisible = ValueNotifier<bool>(true);
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    TodoListScope.of(context, listen: false).fetchTodoList();
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
      _isButtonVisible.value = false;
    }
    if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
      _isButtonVisible.value = true;
    }
  }

  void _onPlusPressed() {
    NewTodoRoute().go(context);
    // showModalBottomSheet(
    //   context: context,
    //   isScrollControlled: true,
    //   builder: (context) => const NewTodoItemScreen(),
    // );
  }

  void _onRankChanged(int oldIndex, int newIndex) =>
      TodoListScope.of(context, listen: false).changeRank(oldIndex, newIndex);

  @override
  Widget build(BuildContext context) {
    final todoListScope = TodoListScope.of(context);
    final items = todoListScope.todoList;
    final state = todoListScope.blocState;

    return Scaffold(
        body: SafeArea(
          child: state.map(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (s) => Center(
              child: Text('Error: ${s.error}'),
            ),
            loaded: (s) => s.todos.isEmpty
                ? const Center(child: Text('No todos'))
                : ReorderableListView.builder(
                    scrollController: _scrollController,
                    padding: const EdgeInsets.all(16),
                    itemCount: items.length,
                    itemBuilder: (context, index) => Dismissible(
                      key: ObjectKey(items[index]),
                      child: _TodoTile(
                        todoItem: items[index],
                      ),
                      onDismissed: (direction) =>
                          TodoListScope.of(context).deleteTodo(items[index]),
                    ),
                    onReorder: _onRankChanged,
                  ),
          ),
        ),
        floatingActionButton: state.maybeMap<Widget?>(
          orElse: () => null,
          loaded: (_) => ValueListenableBuilder<bool>(
            valueListenable: _isButtonVisible,
            builder: (context, value, child) => Visibility(
              visible: value,
              child: FloatingActionButton.small(
                onPressed: _onPlusPressed,
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ));
  }
}

class _TodoTile extends StatefulWidget {
  const _TodoTile({required this.todoItem});

  final TodoItem todoItem;

  @override
  State<_TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<_TodoTile> {
  bool? _value;

  @override
  void initState() {
    super.initState();

    _value = widget.todoItem.isDone;
  }

  void _onCheckBoxPressed(TodoItem item, bool? value) {
    context
        .read<UpdateTodoItemBloc>()
        .add(UpdateTodoItemEvent.updateTodo(item.copyWith(isDone: value ?? item.isDone)));
  }

  void _onCardPressed() {
    EditTodoRoute(todoId: widget.todoItem.id).go(context);
    // showModalBottomSheet(
    //   context: context,
    //   isScrollControlled: true,
    //   builder: (context) => EditTodoItemScreen(itemId: widget.todoItem.id),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: _onCardPressed,
        child: ListTile(
          dense: true,
          contentPadding: const EdgeInsets.fromLTRB(0, 4, 12, 4),
          leading: Checkbox.adaptive(
            onChanged: (value) => _onCheckBoxPressed(widget.todoItem, value),
            value: _value,
          ),
          title: Text(
            'id ${widget.todoItem.id} - ${widget.todoItem.rank} - ${widget.todoItem.title}',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
