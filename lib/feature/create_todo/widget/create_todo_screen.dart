import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/core/database/todo_list_database.dart';
import 'package:todo_list/feature/create_todo/bloc/create_todo_item_bloc.dart';

class NewTodoItemScreen extends StatefulWidget {
  const NewTodoItemScreen({super.key});

  @override
  State<NewTodoItemScreen> createState() => _NewTodoItemScreenState();
}

class _NewTodoItemScreenState extends State<NewTodoItemScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _onAddPressed({required String title, required String description}) {
    final item = TodoItemsCompanion.insert(
      rank: 0,
      title: title,
      description: Value<String?>(description),
    );

    context.read<CreateTodoItemBloc>().add(CreateTodoItemEvent.createTodo(item));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateTodoItemBloc, CreateTodoItemState>(
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
                  hintText: 'title',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _descriptionController,
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'description',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: BlocBuilder<CreateTodoItemBloc, CreateTodoItemState>(
                  builder: (context, state) => TextButton(
                    onPressed: state.maybeMap<bool>(
                      processing: (_) => true,
                      orElse: () => false,
                    )
                        ? null
                        : () => _onAddPressed(
                              title: _titleController.text,
                              description: _descriptionController.text,
                            ),
                    child: const Text('Add'),
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
