import 'package:flutter/material.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({super.key});

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  TextEditingController taskController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add you tasks"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children:  [
          Form(child: Column(
            children: [
               TextFormField(
                      controller: taskController,
                      keyboardType: TextInputType.text,
                      validator: (val) =>
                          val!.isEmpty ? 'Invalid name field' : null,
                      decoration: const InputDecoration(
                        labelText: 'Full Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
              SizedBox(
                height: 20,
                //time selector
              ),
            ],
          )),
        ],
      ),
    );
  }
}
