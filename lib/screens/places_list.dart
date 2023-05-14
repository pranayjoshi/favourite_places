import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PlacesListWidget extends StatelessWidget {
  const PlacesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Places"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
      ),
    );
  }
}