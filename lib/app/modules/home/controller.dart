import 'package:get/get.dart';
import 'package:todo_app/app/data/services/storage/responsitory.dart';

import '../../data/models/task.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});

  final tasks = <Task>[].obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTask());
    ever(tasks, (_) => taskRepository.writeTask(tasks));
  }
}
