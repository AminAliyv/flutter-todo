import 'package:flutter/material.dart';
import 'package:todom/model/todo_model.dart';
import 'package:todom/service/todo_service.dart';

class CardTodo extends StatefulWidget {
  const CardTodo({Key? key});

  @override
  State<CardTodo> createState() => _CardTodoState();
}

class _CardTodoState extends State<CardTodo> {
  final _todoService = TodoService();
  

  void _getTodoList() async {
    await _todoService.fetchTodos();
    setState(() {});
  }
  void _updateTodo(TodoModel todo) async {
  await _todoService.updateTodo(todo);
  setState(() {
  });
}



  @override
  void initState() {
    _getTodoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _todoService.currentTodos.length,
        itemBuilder: (context, index) {
          final TodoModel todo = _todoService.currentTodos[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  todo.showDesc = !todo.showDesc;
                });
              },
              child: Card(
                color: Color.fromARGB(245, 247, 249, 249),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: todo.complated,
                        onChanged: (isDone) {
                          todo.complated = isDone!;
                          _updateTodo(todo);
                        },
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              todo.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            if (todo.showDesc)
                              Text(
                                todo.desc,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                          ],
                        ),
                      ),
                      todo.showDesc == false
                          ? const Text(
                              "...",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Text(''),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
