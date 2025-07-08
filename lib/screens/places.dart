import 'package:flutter/material.dart';
import 'package:maplace/screens/new_place.dart';
import 'package:maplace/utils/theme.dart';
import 'package:maplace/widgets/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (ctx) => NewPlace()));
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      backgroundColor: theme.colorScheme.surface,
      body: PlacesList(places: []),
    );
  }
}
