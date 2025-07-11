import 'package:flutter/material.dart';
import 'package:maplace/models/place.dart';
import 'package:maplace/screens/places_details.dart';
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
          style: TextStyle(color: theme.colorScheme.onSurface),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: places.length,
        itemBuilder:
            (ctx, index) => ListTile(
              leading: CircleAvatar(
                radius: 26,
                backgroundImage: FileImage(places[index].image),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => PlaceDetailsScreen(places[index]),
                  ),
                );
              },
              title: Text(
                places[index].title,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                places[index].location?.address ?? '',
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
      );
    }
  }
}
