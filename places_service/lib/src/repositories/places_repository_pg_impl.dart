import 'package:places_service/src/repositories/places_repository.dart';
import 'package:postgres/postgres.dart';
import 'package:protobufs/protobufs.dart';

class PlacesRepositoryPgImpl implements PlacesRepository {
  PlacesRepositoryPgImpl() {
    _connection = PostgreSQLConnection(
      'localhost',
      5432,
      'places_db',
      username: 'postgres',
      password: 'example',
    );
  }

  PostgreSQLConnection? _connection;

  @override
  Future<PlaceModel> createPlace(PlaceModel placeData) async {
    if (_connection!.isClosed) {
      await _connection!.open();
    }
    final List<Map<String, Map<String, dynamic>>> results =
        await _connection!.mappedResultsQuery(
      '''
      INSERT INTO places(name, city, state) VALUES
      (@name, @city, @state)
      RETURNING *
      ''',
      substitutionValues: {
        'name': placeData.name,
        'city': placeData.city,
        'state': placeData.state,
      },
    );
    final PlaceModel newPlace = PlaceModel();
    if (results.isNotEmpty) {
      final Map<String, dynamic> newPlaceData = results.first['places']!;
      newPlace.mergeFromProto3Json(newPlaceData);
    }
    return newPlace;
  }

  @override
  Future<List<PlaceModel>> findAllPlaces() async {
    if (_connection!.isClosed) {
      await _connection!.open();
    }
    final List<Map<String, Map<String, dynamic>>> results =
        await _connection!.mappedResultsQuery(
      'SELECT * FROM places',
    );
    if (results.isNotEmpty) {
      final List<Map<String, dynamic>> placesData =
          results.map((result) => result['places']!).toList();
      final List<PlaceModel> places = placesData
          .map((placeData) => PlaceModel()..mergeFromProto3Json(placeData))
          .toList();
      return places;
    } else {
      return [];
    }
  }
}
