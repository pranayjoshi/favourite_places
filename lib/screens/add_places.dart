import 'package:favourite_places/providers/user_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();

  void savePlace(){
    final enteredText = _titleController.text;

    if (enteredText.isEmpty){
      return;
    }
    ref.read(UserPlacesProvider.notifier).addPlace(enteredText);

  }

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
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(label: Text("Title")),
              controller: _titleController,
              style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("Add Place"),
              icon: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
