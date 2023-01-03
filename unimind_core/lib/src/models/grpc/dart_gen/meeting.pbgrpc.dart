///
//  Generated code. Do not modify.
//  source: meeting.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'meeting.pb.dart' as $2;
export 'meeting.pb.dart';

class MeetingServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$2.MeetingRequest, $2.Meeting>(
      '/MeetingService/Create',
      ($2.MeetingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Meeting.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$2.MeetingRequest, $2.Meeting>(
      '/MeetingService/Update',
      ($2.MeetingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Meeting.fromBuffer(value));
  static final _$matchMeeting =
      $grpc.ClientMethod<$2.TestResultRequest, $2.MeetingListResponse>(
          '/MeetingService/MatchMeeting',
          ($2.TestResultRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.MeetingListResponse.fromBuffer(value));

  MeetingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Meeting> create($2.MeetingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$2.Meeting> update($2.MeetingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$2.MeetingListResponse> matchMeeting(
      $2.TestResultRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$matchMeeting, request, options: options);
  }
}

abstract class MeetingServiceBase extends $grpc.Service {
  $core.String get $name => 'MeetingService';

  MeetingServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.MeetingRequest, $2.Meeting>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MeetingRequest.fromBuffer(value),
        ($2.Meeting value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MeetingRequest, $2.Meeting>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MeetingRequest.fromBuffer(value),
        ($2.Meeting value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.TestResultRequest, $2.MeetingListResponse>(
            'MatchMeeting',
            matchMeeting_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.TestResultRequest.fromBuffer(value),
            ($2.MeetingListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.Meeting> create_Pre(
      $grpc.ServiceCall call, $async.Future<$2.MeetingRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$2.Meeting> update_Pre(
      $grpc.ServiceCall call, $async.Future<$2.MeetingRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$2.MeetingListResponse> matchMeeting_Pre($grpc.ServiceCall call,
      $async.Future<$2.TestResultRequest> request) async {
    return matchMeeting(call, await request);
  }

  $async.Future<$2.Meeting> create(
      $grpc.ServiceCall call, $2.MeetingRequest request);
  $async.Future<$2.Meeting> update(
      $grpc.ServiceCall call, $2.MeetingRequest request);
  $async.Future<$2.MeetingListResponse> matchMeeting(
      $grpc.ServiceCall call, $2.TestResultRequest request);
}
