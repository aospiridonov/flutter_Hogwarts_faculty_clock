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
  static final _$getHouses = $grpc.ClientMethod<$0.GetHouesRequest, $0.Houses>(
      '/Hogwarts/GetHouses',
      ($0.GetHouesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Houses.fromBuffer(value));
  static final _$updatePoints =
      $grpc.ClientMethod<$0.UpdateHousePointsRequest, $0.House>(
          '/Hogwarts/UpdatePoints',
          ($0.UpdateHousePointsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.House.fromBuffer(value));

  HogwartsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.School> getSchool($0.GetSchoolRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSchool, request, options: options);
  }

  $grpc.ResponseStream<$0.Houses> getHouses(
      $async.Stream<$0.GetHouesRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getHouses, request, options: options);
  }

  $grpc.ResponseFuture<$0.House> updatePoints(
      $0.UpdateHousePointsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePoints, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$0.GetHouesRequest, $0.Houses>(
        'GetHouses',
        getHouses,
        true,
        true,
        ($core.List<$core.int> value) => $0.GetHouesRequest.fromBuffer(value),
        ($0.Houses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateHousePointsRequest, $0.House>(
        'UpdatePoints',
        updatePoints_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateHousePointsRequest.fromBuffer(value),
        ($0.House value) => value.writeToBuffer()));
  }

  $async.Future<$0.School> getSchool_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetSchoolRequest> request) async {
    return getSchool(call, await request);
  }

  $async.Future<$0.House> updatePoints_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateHousePointsRequest> request) async {
    return updatePoints(call, await request);
  }

  $async.Future<$0.School> getSchool(
      $grpc.ServiceCall call, $0.GetSchoolRequest request);
  $async.Stream<$0.Houses> getHouses(
      $grpc.ServiceCall call, $async.Stream<$0.GetHouesRequest> request);
  $async.Future<$0.House> updatePoints(
      $grpc.ServiceCall call, $0.UpdateHousePointsRequest request);
}
