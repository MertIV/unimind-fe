///
//  Generated code. Do not modify.
//  source: calendar.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'server.pb.dart' as $1;
import 'calendar.pb.dart' as $3;
export 'calendar.pb.dart';

class CalendarServiceClient extends $grpc.Client {
  static final _$getByUserID = $grpc.ClientMethod<$1.IdRequest, $3.Calendar>(
      '/CalendarService/GetByUserID',
      ($1.IdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Calendar.fromBuffer(value));

  CalendarServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.Calendar> getByUserID($1.IdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByUserID, request, options: options);
  }
}

abstract class CalendarServiceBase extends $grpc.Service {
  $core.String get $name => 'CalendarService';

  CalendarServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.IdRequest, $3.Calendar>(
        'GetByUserID',
        getByUserID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IdRequest.fromBuffer(value),
        ($3.Calendar value) => value.writeToBuffer()));
  }

  $async.Future<$3.Calendar> getByUserID_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IdRequest> request) async {
    return getByUserID(call, await request);
  }

  $async.Future<$3.Calendar> getByUserID(
      $grpc.ServiceCall call, $1.IdRequest request);
}
