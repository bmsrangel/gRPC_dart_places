///
//  Generated code. Do not modify.
//  source: place.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use placeModelDescriptor instead')
const PlaceModel$json = const {
  '1': 'PlaceModel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'state', '3': 4, '4': 1, '5': 9, '10': 'state'},
  ],
};

/// Descriptor for `PlaceModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List placeModelDescriptor = $convert.base64Decode('CgpQbGFjZU1vZGVsEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGNpdHkYAyABKAlSBGNpdHkSFAoFc3RhdGUYBCABKAlSBXN0YXRl');
@$core.Deprecated('Use getAllPlacesRequestDescriptor instead')
const GetAllPlacesRequest$json = const {
  '1': 'GetAllPlacesRequest',
};

/// Descriptor for `GetAllPlacesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllPlacesRequestDescriptor = $convert.base64Decode('ChNHZXRBbGxQbGFjZXNSZXF1ZXN0');
@$core.Deprecated('Use getAllPlacesResponseDescriptor instead')
const GetAllPlacesResponse$json = const {
  '1': 'GetAllPlacesResponse',
  '2': const [
    const {'1': 'places', '3': 1, '4': 3, '5': 11, '6': '.PlaceModel', '10': 'places'},
  ],
};

/// Descriptor for `GetAllPlacesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllPlacesResponseDescriptor = $convert.base64Decode('ChRHZXRBbGxQbGFjZXNSZXNwb25zZRIjCgZwbGFjZXMYASADKAsyCy5QbGFjZU1vZGVsUgZwbGFjZXM=');
@$core.Deprecated('Use createPlaceRequestDescriptor instead')
const CreatePlaceRequest$json = const {
  '1': 'CreatePlaceRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'city', '3': 2, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'state', '3': 3, '4': 1, '5': 9, '10': 'state'},
  ],
};

/// Descriptor for `CreatePlaceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPlaceRequestDescriptor = $convert.base64Decode('ChJDcmVhdGVQbGFjZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRjaXR5GAIgASgJUgRjaXR5EhQKBXN0YXRlGAMgASgJUgVzdGF0ZQ==');
@$core.Deprecated('Use createPlaceResponseDescriptor instead')
const CreatePlaceResponse$json = const {
  '1': 'CreatePlaceResponse',
  '2': const [
    const {'1': 'place', '3': 1, '4': 1, '5': 11, '6': '.PlaceModel', '10': 'place'},
  ],
};

/// Descriptor for `CreatePlaceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPlaceResponseDescriptor = $convert.base64Decode('ChNDcmVhdGVQbGFjZVJlc3BvbnNlEiEKBXBsYWNlGAEgASgLMgsuUGxhY2VNb2RlbFIFcGxhY2U=');
