import 'dart:io';

import 'package:api/src/controllers/places_controller.dart';
import 'package:grpc/grpc.dart';
import 'package:protobufs/protobufs.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

void main(List<String> args) async {
  final ClientChannel placesChannel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final PlacesClient placesClient = PlacesClient(placesChannel);
  final PlacesController placesController = PlacesController(placesClient);

  // Configure routes.
  final _router = Router()
    ..get('/places', placesController.getAllPlaces)
    ..post('/places', placesController.createPlace);

  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;

  // Configure a pipeline that logs requests.
  final _handler = Pipeline().addMiddleware(logRequests()).addHandler(_router);

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '3000');
  final server = await serve(_handler, ip, port);
  print('Server listening on port ${server.port}');
}
