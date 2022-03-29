import 'package:grpc/grpc.dart';
import 'package:places_service/src/repositories/places_repository.dart';
import 'package:protobufs/protobufs.dart';

class PlacesService extends PlacesServiceBase {
  PlacesService(this._placesRepository);

  final PlacesRepository _placesRepository;

  @override
  Future<CreatePlaceResponse> createPlace(
    ServiceCall call,
    CreatePlaceRequest request,
  ) async {
    final PlaceModel placeData = PlaceModel(
      name: request.name,
      city: request.city,
      state: request.state,
    );
    final PlaceModel newPlace = await _placesRepository.createPlace(placeData);
    return CreatePlaceResponse(place: newPlace);
  }

  @override
  Future<GetAllPlacesResponse> getAllPlaces(
    ServiceCall call,
    GetAllPlacesRequest request,
  ) async {
    final List<PlaceModel> allPlaces = await _placesRepository.findAllPlaces();
    return GetAllPlacesResponse(places: allPlaces);
  }
}
