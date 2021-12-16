import 'package:flutter/material.dart';
import 'package:to_doey/models/tasks_data.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(create: (context) => TaskData(),
      child: const MaterialApp(
        home: TaskScreen(),
      ),);

  }
}
