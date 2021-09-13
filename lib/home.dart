import 'package:project3/task_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'task_card.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tasks'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, 'addTask').then((value) {
            setState(() {
            });
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: TaskList.task.length,
          itemBuilder: (context,index)=> TaskCard(title:TaskList.task[index].title, date: TaskList.task[index].date, priority: TaskList.task[index].priority),
        ),
      ),
    );
  }
}
