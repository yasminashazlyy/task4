import 'package:flutter/material.dart';
import 'package:project3/add_task.dart';
import 'package:flutter/cupertino.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=>Home(),
        'addTask':(context)=>AddTaskScreen(),
      },
      initialRoute: '/',
    );

  }
}

