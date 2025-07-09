import 'package:flutter/material.dart';
import 'package:maplace/models/place.dart';
import 'package:maplace/utils/theme.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'No places added yet',
          style: TextStyle(
            color: theme.colorScheme.onSurface,
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: places.length,
        itemBuilder:
            (ctx, index) => ListTile(
              title: Text(
                places[index].title,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
      );
    }
  }
}
