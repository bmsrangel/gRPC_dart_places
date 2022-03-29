///
//  Generated code. Do not modify.
//  source: place.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PlaceModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PlaceModel', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..hasRequiredFields = false
  ;

  PlaceModel._() : super();
  factory PlaceModel({
    $core.int? id,
    $core.String? name,
    $core.String? city,
    $core.String? state,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (city != null) {
      _result.city = city;
    }
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory PlaceModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlaceModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlaceModel clone() => PlaceModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlaceModel copyWith(void Function(PlaceModel) updates) => super.copyWith((message) => updates(message as PlaceModel)) as PlaceModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlaceModel create() => PlaceModel._();
  PlaceModel createEmptyInstance() => create();
  static $pb.PbList<PlaceModel> createRepeated() => $pb.PbList<PlaceModel>();
  @$core.pragma('dart2js:noInline')
  static PlaceModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlaceModel>(create);
  static PlaceModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get city => $_getSZ(2);
  @$pb.TagNumber(3)
  set city($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCity() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get state => $_getSZ(3);
  @$pb.TagNumber(4)
  set state($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => clearField(4);
}

class GetAllPlacesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllPlacesRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetAllPlacesRequest._() : super();
  factory GetAllPlacesRequest() => create();
  factory GetAllPlacesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllPlacesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllPlacesRequest clone() => GetAllPlacesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllPlacesRequest copyWith(void Function(GetAllPlacesRequest) updates) => super.copyWith((message) => updates(message as GetAllPlacesRequest)) as GetAllPlacesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllPlacesRequest create() => GetAllPlacesRequest._();
  GetAllPlacesRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllPlacesRequest> createRepeated() => $pb.PbList<GetAllPlacesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllPlacesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllPlacesRequest>(create);
  static GetAllPlacesRequest? _defaultInstance;
}

class GetAllPlacesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllPlacesResponse', createEmptyInstance: create)
    ..pc<PlaceModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'places', $pb.PbFieldType.PM, subBuilder: PlaceModel.create)
    ..hasRequiredFields = false
  ;

  GetAllPlacesResponse._() : super();
  factory GetAllPlacesResponse({
    $core.Iterable<PlaceModel>? places,
  }) {
    final _result = create();
    if (places != null) {
      _result.places.addAll(places);
    }
    return _result;
  }
  factory GetAllPlacesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllPlacesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllPlacesResponse clone() => GetAllPlacesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllPlacesResponse copyWith(void Function(GetAllPlacesResponse) updates) => super.copyWith((message) => updates(message as GetAllPlacesResponse)) as GetAllPlacesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllPlacesResponse create() => GetAllPlacesResponse._();
  GetAllPlacesResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllPlacesResponse> createRepeated() => $pb.PbList<GetAllPlacesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllPlacesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllPlacesResponse>(create);
  static GetAllPlacesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PlaceModel> get places => $_getList(0);
}

class CreatePlaceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePlaceRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..hasRequiredFields = false
  ;

  CreatePlaceRequest._() : super();
  factory CreatePlaceRequest({
    $core.String? name,
    $core.String? city,
    $core.String? state,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (city != null) {
      _result.city = city;
    }
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory CreatePlaceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePlaceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePlaceRequest clone() => CreatePlaceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePlaceRequest copyWith(void Function(CreatePlaceRequest) updates) => super.copyWith((message) => updates(message as CreatePlaceRequest)) as CreatePlaceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePlaceRequest create() => CreatePlaceRequest._();
  CreatePlaceRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePlaceRequest> createRepeated() => $pb.PbList<CreatePlaceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePlaceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePlaceRequest>(create);
  static CreatePlaceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get city => $_getSZ(1);
  @$pb.TagNumber(2)
  set city($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get state => $_getSZ(2);
  @$pb.TagNumber(3)
  set state($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}

class CreatePlaceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePlaceResponse', createEmptyInstance: create)
    ..aOM<PlaceModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'place', subBuilder: PlaceModel.create)
    ..hasRequiredFields = false
  ;

  CreatePlaceResponse._() : super();
  factory CreatePlaceResponse({
    PlaceModel? place,
  }) {
    final _result = create();
    if (place != null) {
      _result.place = place;
    }
    return _result;
  }
  factory CreatePlaceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePlaceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePlaceResponse clone() => CreatePlaceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePlaceResponse copyWith(void Function(CreatePlaceResponse) updates) => super.copyWith((message) => updates(message as CreatePlaceResponse)) as CreatePlaceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePlaceResponse create() => CreatePlaceResponse._();
  CreatePlaceResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePlaceResponse> createRepeated() => $pb.PbList<CreatePlaceResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePlaceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePlaceResponse>(create);
  static CreatePlaceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PlaceModel get place => $_getN(0);
  @$pb.TagNumber(1)
  set place(PlaceModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlace() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlace() => clearField(1);
  @$pb.TagNumber(1)
  PlaceModel ensurePlace() => $_ensure(0);
}

