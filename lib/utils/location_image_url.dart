import 'package:maplace/models/place.dart';
import 'package:maplace/secrets/secrets.dart' as secrets;

class LocationImageUrl {
  String locationImage(PlaceLocation? location) {
    if (location == null) {
      return '';
    }
    final lat = location.latitude ;
    final lng = location.longitude;
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$lat,$lng&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:S%7C$lat,$lng&key=${secrets.googleMapsApiKey}';
  }
}