///
//  Generated code. Do not modify.
//  source: place.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'place.pb.dart' as $0;
export 'place.pb.dart';

class PlacesClient extends $grpc.Client {
  static final _$getAllPlaces =
      $grpc.ClientMethod<$0.GetAllPlacesRequest, $0.GetAllPlacesResponse>(
          '/Places/getAllPlaces',
          ($0.GetAllPlacesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetAllPlacesResponse.fromBuffer(value));
  static final _$createPlace =
      $grpc.ClientMethod<$0.CreatePlaceRequest, $0.CreatePlaceResponse>(
          '/Places/createPlace',
          ($0.CreatePlaceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreatePlaceResponse.fromBuffer(value));

  PlacesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetAllPlacesResponse> getAllPlaces(
      $0.GetAllPlacesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllPlaces, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreatePlaceResponse> createPlace(
      $0.CreatePlaceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPlace, request, options: options);
  }
}

abstract class PlacesServiceBase extends $grpc.Service {
  $core.String get $name => 'Places';

  PlacesServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetAllPlacesRequest, $0.GetAllPlacesResponse>(
            'getAllPlaces',
            getAllPlaces_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetAllPlacesRequest.fromBuffer(value),
            ($0.GetAllPlacesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreatePlaceRequest, $0.CreatePlaceResponse>(
            'createPlace',
            createPlace_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreatePlaceRequest.fromBuffer(value),
            ($0.CreatePlaceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetAllPlacesResponse> getAllPlaces_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAllPlacesRequest> request) async {
    return getAllPlaces(call, await request);
  }

  $async.Future<$0.CreatePlaceResponse> createPlace_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreatePlaceRequest> request) async {
    return createPlace(call, await request);
  }

  $async.Future<$0.GetAllPlacesResponse> getAllPlaces(
      $grpc.ServiceCall call, $0.GetAllPlacesRequest request);
  $async.Future<$0.CreatePlaceResponse> createPlace(
      $grpc.ServiceCall call, $0.CreatePlaceRequest request);
}
