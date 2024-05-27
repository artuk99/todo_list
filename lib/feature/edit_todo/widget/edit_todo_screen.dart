import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/feature/edit_todo/bloc/update_todo_item_bloc.dart';
import 'package:todo_list/feature/todo_list/widget/todo_list_scope.dart';

class EditTodoItemScreen extends StatefulWidget {
  const EditTodoItemScreen({
    required this.itemId,
    super.key,
  });

  final int itemId;

  @override
  State<EditTodoItemScreen> createState() => _EditTodoItemScreenState();
}

class _EditTodoItemScreenState extends State<EditTodoItemScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    final item =
        TodoListScope.of(context, listen: false).todoList.firstWhere((e) => e.id == widget.itemId);

    _titleController = TextEditingController()..text = item.title;
    _descriptionController = TextEditingController()..text = item.description ?? '';
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _onEditPressed({required String title, required String description}) {
    final item =
        TodoListScope.of(context, listen: false).todoList.firstWhere((e) => e.id == widget.itemId);
    context.read<UpdateTodoItemBloc>().add(UpdateTodoItemEvent.updateTodo(
        item.copyWith(title: title, description: Value(description))));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateTodoItemBloc, UpdateTodoItemState>(
      listener: (context, state) => state.mapOrNull(
        successful: (_) => Navigator.of(context).pop(),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _descriptionController,
                maxLines: 5,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: BlocBuilder<UpdateTodoItemBloc, UpdateTodoItemState>(
                  builder: (context, state) => TextButton(
                    onPressed: state.maybeMap<bool>(
                      processing: (_) => true,
                      orElse: () => false,
                    )
                        ? null
                        : () => _onEditPressed(
                              title: _titleController.text,
                              description: _descriptionController.text,
                            ),
                    child: const Text('Edit'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
