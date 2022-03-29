import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:protobufs/protobufs.dart';
import 'package:shelf/shelf.dart';

class PlacesController {
  PlacesController(this._stub);

  final PlacesClient _stub;

  FutureOr<Response> getAllPlaces(Request request) async {
    final GetAllPlacesResponse response = await _stub.getAllPlaces(
      GetAllPlacesRequest(),
    );

    final List<PlaceModel> allPlaces = response.places;
    return Response.ok(
      jsonEncode({
        'places': allPlaces.map((place) => place.toProto3Json()).toList(),
      }),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    );
  }

  FutureOr<Response> createPlace(Request request) async {
    final String placeDataString = await request.readAsString();
    final Map<String, dynamic> placeData = jsonDecode(placeDataString);
    final CreatePlaceResponse response = await _stub.createPlace(
      CreatePlaceRequest(
        name: placeData['name'],
        city: placeData['city'],
        state: placeData['state'],
      ),
    );
    final PlaceModel newPlace = response.place;
    return Response(
      201,
      body: jsonEncode({
        'place': newPlace.toProto3Json(),
      }),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    );
  }
}
