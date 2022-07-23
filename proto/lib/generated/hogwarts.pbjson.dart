///
//  Generated code. Do not modify.
//  source: hogwarts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use stateDescriptor instead')
const State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `State`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateDescriptor = $convert.base64Decode('CgVTdGF0ZRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cw==');
@$core.Deprecated('Use houseDescriptor instead')
const House$json = const {
  '1': 'House',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'points', '3': 2, '4': 1, '5': 5, '10': 'points'},
  ],
};

/// Descriptor for `House`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List houseDescriptor = $convert.base64Decode('CgVIb3VzZRIOCgJpZBgBIAEoBVICaWQSFgoGcG9pbnRzGAIgASgFUgZwb2ludHM=');
@$core.Deprecated('Use updateHousePointsRequestDescriptor instead')
const UpdateHousePointsRequest$json = const {
  '1': 'UpdateHousePointsRequest',
  '2': const [
    const {'1': 'branch_id', '3': 1, '4': 1, '5': 5, '10': 'branchId'},
    const {'1': 'house_id', '3': 2, '4': 1, '5': 5, '10': 'houseId'},
    const {'1': 'points', '3': 3, '4': 1, '5': 5, '10': 'points'},
  ],
};

/// Descriptor for `UpdateHousePointsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateHousePointsRequestDescriptor = $convert.base64Decode('ChhVcGRhdGVIb3VzZVBvaW50c1JlcXVlc3QSGwoJYnJhbmNoX2lkGAEgASgFUghicmFuY2hJZBIZCghob3VzZV9pZBgCIAEoBVIHaG91c2VJZBIWCgZwb2ludHMYAyABKAVSBnBvaW50cw==');
@$core.Deprecated('Use housesDescriptor instead')
const Houses$json = const {
  '1': 'Houses',
  '2': const [
    const {'1': 'branch_id', '3': 1, '4': 1, '5': 5, '10': 'branchId'},
    const {'1': 'houses', '3': 2, '4': 3, '5': 11, '6': '.House', '10': 'houses'},
  ],
};

/// Descriptor for `Houses`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List housesDescriptor = $convert.base64Decode('CgZIb3VzZXMSGwoJYnJhbmNoX2lkGAEgASgFUghicmFuY2hJZBIeCgZob3VzZXMYAiADKAsyBi5Ib3VzZVIGaG91c2Vz');
@$core.Deprecated('Use branchIDDescriptor instead')
const BranchID$json = const {
  '1': 'BranchID',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `BranchID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List branchIDDescriptor = $convert.base64Decode('CghCcmFuY2hJRBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use branchDescriptor instead')
const Branch$json = const {
  '1': 'Branch',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Branch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List branchDescriptor = $convert.base64Decode('CgZCcmFuY2gSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use branchesDescriptor instead')
const Branches$json = const {
  '1': 'Branches',
  '2': const [
    const {'1': 'branches', '3': 1, '4': 3, '5': 11, '6': '.Branch', '10': 'branches'},
  ],
};

/// Descriptor for `Branches`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List branchesDescriptor = $convert.base64Decode('CghCcmFuY2hlcxIjCghicmFuY2hlcxgBIAMoCzIHLkJyYW5jaFIIYnJhbmNoZXM=');
@$core.Deprecated('Use schoolModelDescriptor instead')
const SchoolModel$json = const {
  '1': 'SchoolModel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'branches', '3': 2, '4': 3, '5': 11, '6': '.BranchModel', '10': 'branches'},
  ],
};

/// Descriptor for `SchoolModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List schoolModelDescriptor = $convert.base64Decode('CgtTY2hvb2xNb2RlbBIOCgJpZBgBIAEoBVICaWQSKAoIYnJhbmNoZXMYAiADKAsyDC5CcmFuY2hNb2RlbFIIYnJhbmNoZXM=');
@$core.Deprecated('Use branchModelDescriptor instead')
const BranchModel$json = const {
  '1': 'BranchModel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'houses', '3': 3, '4': 3, '5': 11, '6': '.House', '10': 'houses'},
  ],
};

/// Descriptor for `BranchModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List branchModelDescriptor = $convert.base64Decode('CgtCcmFuY2hNb2RlbBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIeCgZob3VzZXMYAyADKAsyBi5Ib3VzZVIGaG91c2Vz');
