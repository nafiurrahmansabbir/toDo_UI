import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../entities/todo.dart';



class ToDoItem extends StatelessWidget {
  const ToDoItem({
    super.key,
    required this.todo, required this.onIconButtonPressed,
  });

  final Todo todo;
  final VoidCallback onIconButtonPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
      surfaceTintColor: _getCardintColor(todo.isDone),
      color:_getCardBGColor(todo.isDone),
      child: ListTile(
        title: Text(todo.title, style: TextStyle(
          decoration: _getTextDecoration(todo.isDone),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(todo.description),
            Text(todo.time.toString()),
          ],
        ),
        trailing: _buildRoundedIconButton(todo.isDone),


      ),
    );
  }


Widget _buildRoundedIconButton(bool isDone) {
    return GestureDetector(
      onTap: onIconButtonPressed,
      child: CircleAvatar(
        child: Icon(_getIcon(true)),
      ),
    );
  }
  IconData _getIcon(bool isDone){
    return isDone?Icons.check:Icons.clear;
  }

  TextDecoration? _getTextDecoration(bool isDone){
    return isDone? TextDecoration.lineThrough : null;
  }

  Color? _getCardintColor(bool isDone){
    return isDone? Colors.green : null;
  }
  Color? _getCardBGColor(bool isDone){
    return isDone? Colors.green : null;
  }


}