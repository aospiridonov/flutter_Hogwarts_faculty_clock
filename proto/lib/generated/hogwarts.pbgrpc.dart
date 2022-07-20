///
//  Generated code. Do not modify.
//  source: hogwarts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'hogwarts.pb.dart' as $0;
export 'hogwarts.pb.dart';

class HogwartsClient extends $grpc.Client {
  static final _$getSchool = $grpc.ClientMethod<$0.GetSchoolRequest, $0.School>(
      '/Hogwarts/GetSchool',
      ($0.GetSchoolRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.School.fromBuffer(value));

  HogwartsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.School> getSchool($0.GetSchoolRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSchool, request, options: options);
  }
}

abstract class HogwartsServiceBase extends $grpc.Service {
  $core.String get $name => 'Hogwarts';

  HogwartsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetSchoolRequest, $0.School>(
        'GetSchool',
        getSchool_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSchoolRequest.fromBuffer(value),
        ($0.School value) => value.writeToBuffer()));
  }

  $async.Future<$0.School> getSchool_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetSchoolRequest> request) async {
    return getSchool(call, await request);
  }

  $async.Future<$0.School> getSchool(
      $grpc.ServiceCall call, $0.GetSchoolRequest request);
}
