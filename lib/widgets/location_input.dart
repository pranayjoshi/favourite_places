import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key});

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(),
        Row(
          children: [
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.location_on),
                label: Text("Get current location.")),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.map),
                label: Text("Select on map."))
          ],
        )
      ],
    );
  }
}
