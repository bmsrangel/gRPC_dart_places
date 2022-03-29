import 'package:grpc/grpc.dart';
import 'package:places_service/places_service.dart';
import 'package:places_service/src/repositories/places_repository.dart';
import 'package:places_service/src/repositories/places_repository_pg_impl.dart';

void main(List<String> arguments) async {
  final PlacesRepository placesRepository = PlacesRepositoryPgImpl();

  final Server server = Server(
    [PlacesService(placesRepository)],
    [],
    CodecRegistry(
      codecs: [
        GzipCodec(),
      ],
    ),
  );

  await server.serve(port: 50051);
  print('Places service running on port ${server.port}');
}
