///
//  Generated code. Do not modify.
//  source: hogwarts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class House extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'House', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'points', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  House._() : super();
  factory House({
    $core.int? id,
    $core.int? points,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (points != null) {
      _result.points = points;
    }
    return _result;
  }
  factory House.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory House.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  House clone() => House()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  House copyWith(void Function(House) updates) => super.copyWith((message) => updates(message as House)) as House; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static House create() => House._();
  House createEmptyInstance() => create();
  static $pb.PbList<House> createRepeated() => $pb.PbList<House>();
  @$core.pragma('dart2js:noInline')
  static House getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<House>(create);
  static House? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get points => $_getIZ(1);
  @$pb.TagNumber(2)
  set points($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPoints() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoints() => clearField(2);
}

class Branch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Branch', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<House>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'houses', $pb.PbFieldType.PM, subBuilder: House.create)
    ..hasRequiredFields = false
  ;

  Branch._() : super();
  factory Branch({
    $core.int? id,
    $core.String? name,
    $core.Iterable<House>? houses,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (houses != null) {
      _result.houses.addAll(houses);
    }
    return _result;
  }
  factory Branch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Branch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Branch clone() => Branch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Branch copyWith(void Function(Branch) updates) => super.copyWith((message) => updates(message as Branch)) as Branch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Branch create() => Branch._();
  Branch createEmptyInstance() => create();
  static $pb.PbList<Branch> createRepeated() => $pb.PbList<Branch>();
  @$core.pragma('dart2js:noInline')
  static Branch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Branch>(create);
  static Branch? _defaultInstance;

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
  $core.List<House> get houses => $_getList(2);
}

class School extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'School', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..pc<Branch>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branches', $pb.PbFieldType.PM, subBuilder: Branch.create)
    ..hasRequiredFields = false
  ;

  School._() : super();
  factory School({
    $core.int? id,
    $core.Iterable<Branch>? branches,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (branches != null) {
      _result.branches.addAll(branches);
    }
    return _result;
  }
  factory School.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory School.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  School clone() => School()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  School copyWith(void Function(School) updates) => super.copyWith((message) => updates(message as School)) as School; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static School create() => School._();
  School createEmptyInstance() => create();
  static $pb.PbList<School> createRepeated() => $pb.PbList<School>();
  @$core.pragma('dart2js:noInline')
  static School getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<School>(create);
  static School? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Branch> get branches => $_getList(1);
}

class Houses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Houses', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branchId', $pb.PbFieldType.O3)
    ..pc<House>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'houses', $pb.PbFieldType.PM, subBuilder: House.create)
    ..hasRequiredFields = false
  ;

  Houses._() : super();
  factory Houses({
    $core.int? branchId,
    $core.Iterable<House>? houses,
  }) {
    final _result = create();
    if (branchId != null) {
      _result.branchId = branchId;
    }
    if (houses != null) {
      _result.houses.addAll(houses);
    }
    return _result;
  }
  factory Houses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Houses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Houses clone() => Houses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Houses copyWith(void Function(Houses) updates) => super.copyWith((message) => updates(message as Houses)) as Houses; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Houses create() => Houses._();
  Houses createEmptyInstance() => create();
  static $pb.PbList<Houses> createRepeated() => $pb.PbList<Houses>();
  @$core.pragma('dart2js:noInline')
  static Houses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Houses>(create);
  static Houses? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get branchId => $_getIZ(0);
  @$pb.TagNumber(1)
  set branchId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBranchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBranchId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<House> get houses => $_getList(1);
}

class GetSchoolRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSchoolRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetSchoolRequest._() : super();
  factory GetSchoolRequest() => create();
  factory GetSchoolRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSchoolRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSchoolRequest clone() => GetSchoolRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSchoolRequest copyWith(void Function(GetSchoolRequest) updates) => super.copyWith((message) => updates(message as GetSchoolRequest)) as GetSchoolRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSchoolRequest create() => GetSchoolRequest._();
  GetSchoolRequest createEmptyInstance() => create();
  static $pb.PbList<GetSchoolRequest> createRepeated() => $pb.PbList<GetSchoolRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSchoolRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSchoolRequest>(create);
  static GetSchoolRequest? _defaultInstance;
}

class GetHouesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetHouesRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branchId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetHouesRequest._() : super();
  factory GetHouesRequest({
    $core.int? branchId,
  }) {
    final _result = create();
    if (branchId != null) {
      _result.branchId = branchId;
    }
    return _result;
  }
  factory GetHouesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHouesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHouesRequest clone() => GetHouesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHouesRequest copyWith(void Function(GetHouesRequest) updates) => super.copyWith((message) => updates(message as GetHouesRequest)) as GetHouesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetHouesRequest create() => GetHouesRequest._();
  GetHouesRequest createEmptyInstance() => create();
  static $pb.PbList<GetHouesRequest> createRepeated() => $pb.PbList<GetHouesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetHouesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHouesRequest>(create);
  static GetHouesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get branchId => $_getIZ(0);
  @$pb.TagNumber(1)
  set branchId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBranchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBranchId() => clearField(1);
}

class UpdateHousePointsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateHousePointsRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branchId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'houseId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'points', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UpdateHousePointsRequest._() : super();
  factory UpdateHousePointsRequest({
    $core.int? branchId,
    $core.int? houseId,
    $core.int? points,
  }) {
    final _result = create();
    if (branchId != null) {
      _result.branchId = branchId;
    }
    if (houseId != null) {
      _result.houseId = houseId;
    }
    if (points != null) {
      _result.points = points;
    }
    return _result;
  }
  factory UpdateHousePointsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateHousePointsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateHousePointsRequest clone() => UpdateHousePointsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateHousePointsRequest copyWith(void Function(UpdateHousePointsRequest) updates) => super.copyWith((message) => updates(message as UpdateHousePointsRequest)) as UpdateHousePointsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateHousePointsRequest create() => UpdateHousePointsRequest._();
  UpdateHousePointsRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateHousePointsRequest> createRepeated() => $pb.PbList<UpdateHousePointsRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateHousePointsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateHousePointsRequest>(create);
  static UpdateHousePointsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get branchId => $_getIZ(0);
  @$pb.TagNumber(1)
  set branchId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBranchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBranchId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get houseId => $_getIZ(1);
  @$pb.TagNumber(2)
  set houseId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHouseId() => $_has(1);
  @$pb.TagNumber(2)
  void clearHouseId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get points => $_getIZ(2);
  @$pb.TagNumber(3)
  set points($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPoints() => $_has(2);
  @$pb.TagNumber(3)
  void clearPoints() => clearField(3);
}

