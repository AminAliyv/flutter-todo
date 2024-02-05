import 'package:flutter/material.dart';
import 'package:todom/service/todo_service.dart';
import 'package:todom/widgets/appbar.dart';
import 'package:todom/widgets/donecard.dart';
import 'package:todom/widgets/navigation.dart';

class ComplatedTodos extends StatefulWidget {
  const ComplatedTodos({super.key});

  @override
  State<ComplatedTodos> createState() => _ComplatedTodosState();
}

class _ComplatedTodosState extends State<ComplatedTodos> {
  final _todoService = TodoService();



  void _deleteComplatedTodos() async{
    await _todoService.deleteTodos();

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Scaffold(
        appBar: CommonAppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Complated Tasks',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Navi()));
                      setState(() {
                        _deleteComplatedTodos(); 
                      });
                                       
                    },
                    child: const Text(
                      'Delete All',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            DoneCard(),
          ],
        ),
      ),
    );
  }
}
