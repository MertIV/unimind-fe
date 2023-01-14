///
//  Generated code. Do not modify.
//  source: web_socket.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'web_socket.pb.dart' as $6;
export 'web_socket.pb.dart';

class WebSocketServiceClient extends $grpc.Client {
  static final _$connect =
      $grpc.ClientMethod<$6.ConnectionRequest, $6.WebSocketMessage>(
          '/WebSocketService/Connect',
          ($6.ConnectionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.WebSocketMessage.fromBuffer(value));

  WebSocketServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$6.WebSocketMessage> connect(
      $async.Stream<$6.ConnectionRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$connect, request, options: options);
  }
}

abstract class WebSocketServiceBase extends $grpc.Service {
  $core.String get $name => 'WebSocketService';

  WebSocketServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.ConnectionRequest, $6.WebSocketMessage>(
        'Connect',
        connect,
        true,
        true,
        ($core.List<$core.int> value) => $6.ConnectionRequest.fromBuffer(value),
        ($6.WebSocketMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$6.WebSocketMessage> connect(
      $grpc.ServiceCall call, $async.Stream<$6.ConnectionRequest> request);
}
