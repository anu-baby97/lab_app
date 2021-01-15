/*
import 'package:flutter/material.dart';
import 'package:search_map_place/search_map_place.dart';

class LocationSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchMapPlaceWidget(
      apiKey: AIzaSyD0DzYyFf - plKd7vwuLEG37kFS6gO219YE,
      // The language of the autocompletion
      language: 'en',
      // The position used to give better recomendations. In this case we are using the user position
      location: userPosition.coordinates,
      radius: 30000,
      onSelected: (Place place) async {
        final geolocation = await place.geolocation;

        // Will animate the GoogleMap camera, taking us to the selected position with an appropriate zoom
        final GoogleMapController controller = await _mapController.future;
        controller
            .animateCamera(CameraUpdate.newLatLng(geolocation.coordinates));
        controller
            .animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
      },
    );
  }
}
*/
