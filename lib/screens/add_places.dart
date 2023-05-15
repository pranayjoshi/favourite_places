import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() => throw UnimplementedError();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {

  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new Place"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(decoration: InputDecoration(label: Text("Title")), controller: _titleController,),
            SizedBox(height: 16,),
            ElevatedButton.icon(onPressed: (){}, label: Text("Add Place"), icon: Icon(Icons.add),)
          ],
        ),
      ),
    );
  }
}