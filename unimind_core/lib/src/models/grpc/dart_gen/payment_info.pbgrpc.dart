///
//  Generated code. Do not modify.
//  source: payment_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'server.pb.dart' as $1;
import 'payment_info.pb.dart' as $4;
export 'payment_info.pb.dart';

class PaymentInfoServiceClient extends $grpc.Client {
  static final _$getAllAsList =
      $grpc.ClientMethod<$1.IdRequest, $4.PaymentInfoList>(
          '/PaymentInfoService/GetAllAsList',
          ($1.IdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.PaymentInfoList.fromBuffer(value));
  static final _$getByID = $grpc.ClientMethod<$1.IdRequest, $4.PaymentInfo>(
      '/PaymentInfoService/GetByID',
      ($1.IdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.PaymentInfo.fromBuffer(value));
  static final _$create =
      $grpc.ClientMethod<$4.PaymentInfoRequest, $4.PaymentInfo>(
          '/PaymentInfoService/Create',
          ($4.PaymentInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.PaymentInfo.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$4.PaymentInfoRequest, $4.PaymentInfo>(
          '/PaymentInfoService/Update',
          ($4.PaymentInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.PaymentInfo.fromBuffer(value));

  PaymentInfoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.PaymentInfoList> getAllAsList($1.IdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllAsList, request, options: options);
  }

  $grpc.ResponseFuture<$4.PaymentInfo> getByID($1.IdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$4.PaymentInfo> create($4.PaymentInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$4.PaymentInfo> update($4.PaymentInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

abstract class PaymentInfoServiceBase extends $grpc.Service {
  $core.String get $name => 'PaymentInfoService';

  PaymentInfoServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.IdRequest, $4.PaymentInfoList>(
        'GetAllAsList',
        getAllAsList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IdRequest.fromBuffer(value),
        ($4.PaymentInfoList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.IdRequest, $4.PaymentInfo>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IdRequest.fromBuffer(value),
        ($4.PaymentInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.PaymentInfoRequest, $4.PaymentInfo>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.PaymentInfoRequest.fromBuffer(value),
        ($4.PaymentInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.PaymentInfoRequest, $4.PaymentInfo>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.PaymentInfoRequest.fromBuffer(value),
        ($4.PaymentInfo value) => value.writeToBuffer()));
  }

  $async.Future<$4.PaymentInfoList> getAllAsList_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IdRequest> request) async {
    return getAllAsList(call, await request);
  }

  $async.Future<$4.PaymentInfo> getByID_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IdRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$4.PaymentInfo> create_Pre($grpc.ServiceCall call,
      $async.Future<$4.PaymentInfoRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$4.PaymentInfo> update_Pre($grpc.ServiceCall call,
      $async.Future<$4.PaymentInfoRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$4.PaymentInfoList> getAllAsList(
      $grpc.ServiceCall call, $1.IdRequest request);
  $async.Future<$4.PaymentInfo> getByID(
      $grpc.ServiceCall call, $1.IdRequest request);
  $async.Future<$4.PaymentInfo> create(
      $grpc.ServiceCall call, $4.PaymentInfoRequest request);
  $async.Future<$4.PaymentInfo> update(
      $grpc.ServiceCall call, $4.PaymentInfoRequest request);
}
