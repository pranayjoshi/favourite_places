import 'package:favourite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

class UserPlacesNotifier extends StateNotifier<List<Place>>{
  UserPlacesNotifier():super(const []);

  void addPlace(String title, File image){
    final newPlace = Place(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final UserPlacesProvider = StateNotifierProvider<UserPlacesNotifier, List<Place>>((ref) => UserPlacesNotifier());