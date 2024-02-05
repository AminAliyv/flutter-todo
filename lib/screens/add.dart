import 'package:flutter/material.dart';
import 'package:todom/service/todo_service.dart';
import 'package:todom/widgets/appbar.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  TextEditingController todonameController = TextEditingController();
  TextEditingController tododescController = TextEditingController();

  final _todoService = TodoService();

  void _addTodo() async {
    await _todoService.addTodo(
        todonameController.text, tododescController.text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Scaffold(
        appBar: CommonAppBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 75),
              _addTodoField(todonameController, 'What’s in your mind?'),
              SizedBox(height: 50),
              _addTodoField(tododescController, 'Add a note...'),
              SizedBox(height: 25),
              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    _addTodo();
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

TextField _addTodoField(controller, hintText) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: const Icon(Icons.add),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
    ),
  );
}



