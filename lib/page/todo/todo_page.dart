import 'package:components/component/todo/todo_list.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '待办事项'),
      body: const TodoList(),
    );
  }
}
