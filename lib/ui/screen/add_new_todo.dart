import 'package:flutter/material.dart';

class AddNewTodoScreen extends StatefulWidget {
  const AddNewTodoScreen({super.key});

  @override
  State<AddNewTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<AddNewTodoScreen> {
  final TextEditingController _titleController=TextEditingController();
  final TextEditingController _descriptionController=TextEditingController();

  final GlobalKey<FormState>_formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String?value){
                  if(value == null || value.trim().isEmpty){
                    return 'Enter your title';
                  }
                  return null;
                },
              ),
          
              SizedBox(height: 16,),
          
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                ),

                maxLength: 200,
                autovalidateMode: AutovalidateMode.onUserInteraction,

                validator: (String? value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Enter your title';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16,),
              ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){

                  Navigator.pop(context);
                }
              }, child: Text('Add your todo'))
          
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose(){
    _descriptionController.dispose();
    _titleController.dispose();
    super.dispose();


  }
}

