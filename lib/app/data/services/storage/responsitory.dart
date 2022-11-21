import 'package:todo_app/app/data/providers/task/provider.dart';

import '../../models/task.dart';

class TaskRepository {
  TaskProvider taskProvider;

  TaskRepository({required this.taskProvider});
  
  List <Task> readTask() => taskProvider.readTasks();
  void writeTask(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
