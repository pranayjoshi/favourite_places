import 'package:favourite_places/models/place.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}