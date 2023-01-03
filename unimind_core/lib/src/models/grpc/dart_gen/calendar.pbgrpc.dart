///
//  Generated code. Do not modify.
//  source: calendar.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

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
  static final _$addMeetingtoCalendar =
      $grpc.ClientMethod<$1.IdRequest, $1.StringResponse>(
          '/CalendarService/AddMeetingtoCalendar',
          ($1.IdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringResponse.fromBuffer(value));
  static final _$deleteMeetingfromCalendar =
      $grpc.ClientMethod<$1.IdRequest, $1.StringResponse>(
          '/CalendarService/DeleteMeetingfromCalendar',
          ($1.IdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringResponse.fromBuffer(value));

  CalendarServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.Calendar> getByUserID($1.IdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByUserID, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringResponse> addMeetingtoCalendar(
      $1.IdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMeetingtoCalendar, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringResponse> deleteMeetingfromCalendar(
      $1.IdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMeetingfromCalendar, request,
        options: options);
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
    $addMethod($grpc.ServiceMethod<$1.IdRequest, $1.StringResponse>(
        'AddMeetingtoCalendar',
        addMeetingtoCalendar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IdRequest.fromBuffer(value),
        ($1.StringResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.IdRequest, $1.StringResponse>(
        'DeleteMeetingfromCalendar',
        deleteMeetingfromCalendar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IdRequest.fromBuffer(value),
        ($1.StringResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.Calendar> getByUserID_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IdRequest> request) async {
    return getByUserID(call, await request);
  }

  $async.Future<$1.StringResponse> addMeetingtoCalendar_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IdRequest> request) async {
    return addMeetingtoCalendar(call, await request);
  }

  $async.Future<$1.StringResponse> deleteMeetingfromCalendar_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IdRequest> request) async {
    return deleteMeetingfromCalendar(call, await request);
  }

  $async.Future<$3.Calendar> getByUserID(
      $grpc.ServiceCall call, $1.IdRequest request);
  $async.Future<$1.StringResponse> addMeetingtoCalendar(
      $grpc.ServiceCall call, $1.IdRequest request);
  $async.Future<$1.StringResponse> deleteMeetingfromCalendar(
      $grpc.ServiceCall call, $1.IdRequest request);
}
