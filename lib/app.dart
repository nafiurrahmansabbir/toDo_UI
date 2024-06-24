
import 'package:flutter/material.dart';
import 'package:todo_ui/ui/screen/todo_list/toDo_list_screen.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDoListscreen(),
      debugShowCheckedModeBanner: false,
      theme: _ligghtTheme(),
    );
  }

  ThemeData _ligghtTheme() {
    return ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple)
          ),
          errorBorder: OutlineInputBorder(),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)
          ),
        ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromWidth(double.maxFinite),
          padding: EdgeInsets.symmetric(vertical: 12),

        )
      ),

    );
  }
}
