import 'package:favourite_places/models/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text(place.title),
      ),
      body: Stack(children: [
        Image.file(place.image, fit: BoxFit.cover,width: double.infinity, height: double.infinity,)
      ],)
    );
  }
}
