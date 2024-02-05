import 'package:isar/isar.dart';

part 'todo_model.g.dart';

@collection
class TodoModel {
  Id id = Isar.autoIncrement;
  late final String name;
  late final String desc;
  bool complated = false;
  bool showDesc = false;
}