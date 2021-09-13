import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TaskCard extends StatefulWidget {
  final String title,date,priority;
  TaskCard({ this.title, this.date,this.priority});
  @override
  _TaskCardState createState() => _TaskCardState();
}

class  _TaskCardState extends State<TaskCard> {

     bool val = false ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 130.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: Icon(Icons.double_arrow),
            title:
                Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,),),
               subtitle:
              Row(
                children: [
                  Text(widget.date),
                  Text(widget.priority),
                ],
              ),

            trailing: Checkbox(
              value: val,
              onChanged: (bool value) {
                setState((){
                  val=value;
                }
                );
                },
            )
          ),
        ],
      ),
    );
  }
}
