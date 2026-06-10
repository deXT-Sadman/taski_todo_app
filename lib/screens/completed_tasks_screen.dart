import 'package:flutter/material.dart';

class CompletedTasksScreen extends StatelessWidget {
  final List<Map<String, dynamic>> demoTasks = [
    {"title": "Homework Done", "done": true},
    {"title": "Push Up Done", "done": true},
  ];

  @override
  Widget build(BuildContext context) {
    final completed = demoTasks.where((t) => t["done"] == true).toList();
    return Scaffold(
      appBar: AppBar(title: Text("Completed Tasks"), centerTitle: true),
      body: ListView.builder(
        itemCount: completed.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.check_circle, color: Colors.green),
            title: Text(completed[index]["title"]),
          );
        },
      ),
    );
  }
}
