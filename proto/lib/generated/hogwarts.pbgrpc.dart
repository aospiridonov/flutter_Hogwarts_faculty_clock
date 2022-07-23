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
  static final _$connect = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/Hogwarts/connect',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
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
  static final _$fetchBranches = $grpc.ClientMethod<$0.Empty, $0.Branches>(
      '/Hogwarts/FetchBranches',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Branches.fromBuffer(value));
  static final _$streamBranches = $grpc.ClientMethod<$0.Empty, $0.Branches>(
      '/Hogwarts/StreamBranches',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Branches.fromBuffer(value));
  static final _$addBranch = $grpc.ClientMethod<$0.Branch, $0.State>(
      '/Hogwarts/AddBranch',
      ($0.Branch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.State.fromBuffer(value));
  static final _$removeBranch = $grpc.ClientMethod<$0.Branch, $0.State>(
      '/Hogwarts/RemoveBranch',
      ($0.Branch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.State.fromBuffer(value));
  static final _$updateBranch = $grpc.ClientMethod<$0.Branch, $0.State>(
      '/Hogwarts/UpdateBranch',
      ($0.Branch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.State.fromBuffer(value));

  HogwartsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> connect($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connect, request, options: options);
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

  $grpc.ResponseFuture<$0.Branches> fetchBranches($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchBranches, request, options: options);
  }

  $grpc.ResponseStream<$0.Branches> streamBranches($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamBranches, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.State> addBranch($0.Branch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addBranch, request, options: options);
  }

  $grpc.ResponseFuture<$0.State> removeBranch($0.Branch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeBranch, request, options: options);
  }

  $grpc.ResponseFuture<$0.State> updateBranch($0.Branch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBranch, request, options: options);
  }
}

abstract class HogwartsServiceBase extends $grpc.Service {
  $core.String get $name => 'Hogwarts';

  HogwartsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'connect',
        connect_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Branches>(
        'FetchBranches',
        fetchBranches_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Branches value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Branches>(
        'StreamBranches',
        streamBranches_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Branches value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Branch, $0.State>(
        'AddBranch',
        addBranch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Branch.fromBuffer(value),
        ($0.State value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Branch, $0.State>(
        'RemoveBranch',
        removeBranch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Branch.fromBuffer(value),
        ($0.State value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Branch, $0.State>(
        'UpdateBranch',
        updateBranch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Branch.fromBuffer(value),
        ($0.State value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> connect_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return connect(call, await request);
  }

  $async.Future<$0.Empty> updatePoints_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateHousePointsRequest> request) async {
    return updatePoints(call, await request);
  }

  $async.Stream<$0.Houses> streamHouses_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BranchID> request) async* {
    yield* streamHouses(call, await request);
  }

  $async.Future<$0.Branches> fetchBranches_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return fetchBranches(call, await request);
  }

  $async.Stream<$0.Branches> streamBranches_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* streamBranches(call, await request);
  }

  $async.Future<$0.State> addBranch_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Branch> request) async {
    return addBranch(call, await request);
  }

  $async.Future<$0.State> removeBranch_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Branch> request) async {
    return removeBranch(call, await request);
  }

  $async.Future<$0.State> updateBranch_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Branch> request) async {
    return updateBranch(call, await request);
  }

  $async.Future<$0.Empty> connect($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> updatePoints(
      $grpc.ServiceCall call, $0.UpdateHousePointsRequest request);
  $async.Future<$0.Empty> fetchHouses(
      $grpc.ServiceCall call, $async.Stream<$0.BranchID> request);
  $async.Stream<$0.Houses> streamHouses(
      $grpc.ServiceCall call, $0.BranchID request);
  $async.Future<$0.Branches> fetchBranches(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.Branches> streamBranches(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.State> addBranch($grpc.ServiceCall call, $0.Branch request);
  $async.Future<$0.State> removeBranch(
      $grpc.ServiceCall call, $0.Branch request);
  $async.Future<$0.State> updateBranch(
      $grpc.ServiceCall call, $0.Branch request);
}
