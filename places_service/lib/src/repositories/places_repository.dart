import 'package:protobufs/protobufs.dart';

abstract class PlacesRepository {
  Future<List<PlaceModel>> findAllPlaces();
  Future<PlaceModel> createPlace(PlaceModel placeData);
}
