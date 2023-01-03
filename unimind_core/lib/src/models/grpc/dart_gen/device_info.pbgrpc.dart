///
//  Generated code. Do not modify.
//  source: device_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'device_info.pb.dart' as $5;
export 'device_info.pb.dart';

class DeviceInfoServiceClient extends $grpc.Client {
  static final _$deviceConfig =
      $grpc.ClientMethod<$5.DeviceInfoRequest, $5.DeviceInfoResponse>(
          '/DeviceInfoService/DeviceConfig',
          ($5.DeviceInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.DeviceInfoResponse.fromBuffer(value));

  DeviceInfoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.DeviceInfoResponse> deviceConfig(
      $5.DeviceInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deviceConfig, request, options: options);
  }
}

abstract class DeviceInfoServiceBase extends $grpc.Service {
  $core.String get $name => 'DeviceInfoService';

  DeviceInfoServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.DeviceInfoRequest, $5.DeviceInfoResponse>(
        'DeviceConfig',
        deviceConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeviceInfoRequest.fromBuffer(value),
        ($5.DeviceInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.DeviceInfoResponse> deviceConfig_Pre($grpc.ServiceCall call,
      $async.Future<$5.DeviceInfoRequest> request) async {
    return deviceConfig(call, await request);
  }

  $async.Future<$5.DeviceInfoResponse> deviceConfig(
      $grpc.ServiceCall call, $5.DeviceInfoRequest request);
}
