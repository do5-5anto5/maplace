import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maplace/models/place.dart';

class PlaceDetailsScreen extends ConsumerWidget {
  const PlaceDetailsScreen(this.place, {super.key});
  final Place place;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(appBar: AppBar (
      title: Text(place.title),
    ),
      body: Center(
        child: Text(place.title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            )
          )
      ),
    );
  }
}
