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
  static final _$updatePoints =
      $grpc.ClientMethod<$0.UpdateHousePointsRequest, $0.Empty>(
          '/Hogwarts/UpdatePoints',
          ($0.UpdateHousePointsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$fetchHouses = $grpc.ClientMethod<$0.BranchID, $0.Empty>(
      '/Hogwarts/FetchHouses',
      ($0.BranchID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$streamHouses = $grpc.ClientMethod<$0.BranchID, $0.Houses>(
      '/Hogwarts/StreamHouses',
      ($0.BranchID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Houses.fromBuffer(value));

  HogwartsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.School> getSchool($0.GetSchoolRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSchool, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> updatePoints(
      $0.UpdateHousePointsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePoints, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> fetchHouses($async.Stream<$0.BranchID> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$fetchHouses, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$0.Houses> streamHouses($0.BranchID request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamHouses, $async.Stream.fromIterable([request]),
        options: options);
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
    $addMethod($grpc.ServiceMethod<$0.UpdateHousePointsRequest, $0.Empty>(
        'UpdatePoints',
        updatePoints_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateHousePointsRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BranchID, $0.Empty>(
        'FetchHouses',
        fetchHouses,
        true,
        false,
        ($core.List<$core.int> value) => $0.BranchID.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BranchID, $0.Houses>(
        'StreamHouses',
        streamHouses_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.BranchID.fromBuffer(value),
        ($0.Houses value) => value.writeToBuffer()));
  }

  $async.Future<$0.School> getSchool_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetSchoolRequest> request) async {
    return getSchool(call, await request);
  }

  $async.Future<$0.Empty> updatePoints_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateHousePointsRequest> request) async {
    return updatePoints(call, await request);
  }

  $async.Stream<$0.Houses> streamHouses_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BranchID> request) async* {
    yield* streamHouses(call, await request);
  }

  $async.Future<$0.School> getSchool(
      $grpc.ServiceCall call, $0.GetSchoolRequest request);
  $async.Future<$0.Empty> updatePoints(
      $grpc.ServiceCall call, $0.UpdateHousePointsRequest request);
  $async.Future<$0.Empty> fetchHouses(
      $grpc.ServiceCall call, $async.Stream<$0.BranchID> request);
  $async.Stream<$0.Houses> streamHouses(
      $grpc.ServiceCall call, $0.BranchID request);
}
