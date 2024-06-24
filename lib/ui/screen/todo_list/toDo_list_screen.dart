import 'package:flutter/material.dart';
import 'package:todo_ui/app.dart';
import 'package:todo_ui/ui/screen/add_new_todo.dart';
import 'package:todo_ui/ui/screen/todo_list/all_todo_list.dart';
import 'package:todo_ui/ui/screen/todo_list/done_todo.dart';
import 'package:todo_ui/ui/screen/todo_list/undoneTodo.dart';

import '../../../entities/todo.dart';
import '../../widgets/todo_item.dart';

class ToDoListscreen extends StatefulWidget {
  const ToDoListscreen({super.key});

  @override
  State<ToDoListscreen> createState() => _ToDoListscreenState();
}

class _ToDoListscreenState extends State<ToDoListscreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  
  List<Todo> _todoList=[];

  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 3, vsync: this);

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ToDo List"),
          bottom: BuildTabBar(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            AllTodoListtab(),
            UndoneTodo(),
           DoneTodo(),

          ],
        ),

        floatingActionButton: buildFloatingActionButton(context),
    );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
        tooltip: 'Add new todo',
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>AddNewTodoScreen() ));
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),


      );
  }

  TabBar BuildTabBar() {
    return TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'All',),
            Tab(text: 'Undone',),
            Tab(text: 'Done',),
          ],
        );
  }
}


