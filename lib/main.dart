import "package:flutter/material.dart";
import "screens/home_screen.dart";
import "screens/create_task_screen.dart";
import "screens/completed_tasks_screen.dart";

void main() {
  runApp(const TaskiApp());
}

class TaskiApp extends StatelessWidget {
  const TaskiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Taski - To-Do App",
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/create": (context) => CreateTaskScreen(),
        "/completed": (context) => CompletedTasksScreen(),
      },
    );
  }
}
