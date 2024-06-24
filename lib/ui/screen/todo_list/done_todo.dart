import 'package:flutter/cupertino.dart';

import '../../../entities/todo.dart';
import '../../widgets/todo_item.dart';

class DoneTodo extends StatelessWidget {
  const DoneTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context,index){
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (_){},

          child: ToDoItem(
            todo: Todo('Title Will Be here','Description',DateTime.now()),
            onIconButtonPressed:(){},
          ),
        );
      },
    );
  }
}
