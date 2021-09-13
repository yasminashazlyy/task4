import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'task.dart';
import 'task_list.dart';

class AddTaskScreen extends StatelessWidget {

  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController priorityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller:titleController,
              decoration: InputDecoration(
                hintText: 'Title',
                fillColor: Colors.teal,
                filled: true,
              ),
            ),
            TextField(
              controller: dateController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Date',
                fillColor: Colors.teal,
                filled: true,
              ),
            ),
            TextField(
              controller: priorityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Priority',
                fillColor: Colors.teal,
                filled: true,
              ),
            ),
            MaterialButton(
              child: Container(
                width: 1700.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color:Colors.tealAccent,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Center(child: Text('Add Task')),
              ),
              onPressed: (){
                TaskList.task.add(Task(
                    titleController.value.text,
                    dateController.value.text,
                    priorityController.value.text
                ));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
