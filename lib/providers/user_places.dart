import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maplace/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super([]);

  void addPlace(String title, File image, PlaceLocation location) {
    state = [...state, Place(title: title, image: image, location: location)];
  }

  void removePlace(String id) {
    state = state.where((place) => place.id != id).toList();
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
      (ref) => UserPlacesNotifier(),
    );
