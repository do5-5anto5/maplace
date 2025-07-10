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
      body: Stack(
        children: [
          Image.file(
           place.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          )
        ],
      )
    );
  }
}
