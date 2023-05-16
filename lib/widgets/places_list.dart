import 'package:favourite_places/models/place.dart';
import 'package:favourite_places/screens/place_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
          child: Text(
        "No places yet!",
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ));
    }

    return ListView.builder(
      itemBuilder: (ctx, index) => ListTile(
        title: Text(
          places[index].title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => PlaceDetailScreen(place: places[index])));
        },
      ),
      itemCount: places.length,
    );
  }
}
