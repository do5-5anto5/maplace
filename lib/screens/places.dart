import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maplace/providers/user_places.dart';
import 'package:maplace/screens/new_place.dart';
import 'package:maplace/utils/theme.dart';
import 'package:maplace/widgets/places_list.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  final places = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (ctx) => NewPlaceScreen()));
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      backgroundColor: theme.colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PlacesList(places: places),
      ),
    );
  }
}
