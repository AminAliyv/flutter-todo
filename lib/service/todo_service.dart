import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todom/model/todo_model.dart';

class TodoService {
  static late Isar isar;
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([TodoModelSchema], directory: dir.path);
  }

  List<TodoModel> currentTodos = [];
  Future<void> addTodo(String name, String desc) async {
    final newTodo = TodoModel()
      ..name = name
      ..desc = desc;
    await isar.writeTxn(() => isar.todoModels.put(newTodo));
  }


  Future<void> fetchTodos() async {
    currentTodos = await isar.todoModels
        .where()
        .filter()
        .complatedEqualTo(false)
        .findAll();
  }

  Future<void> fetchComplatedTodos() async {
    currentTodos =
        await isar.todoModels.filter().complatedEqualTo(true).findAll();
  }


  Future<void> updateTodo(TodoModel todo) async {
    final existingTodo = await isar.todoModels.get(todo.id);
    if (existingTodo != null && existingTodo.complated == false) {
      await isar.writeTxn(() => isar.todoModels.put(todo));
      await fetchTodos();
    } else if (existingTodo != null && existingTodo.complated == true) {
      await isar.writeTxn(() => isar.todoModels.put(todo));
      await fetchComplatedTodos();
    }
  }


  Future<void> deleteTodos() async {
    await isar.writeTxn(() =>
        isar.todoModels.where().filter().complatedEqualTo(true).deleteAll());
    await fetchComplatedTodos();
  }
}
