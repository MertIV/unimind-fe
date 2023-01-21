///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
import 'server.pb.dart' as $1;
export 'user.pb.dart';

class LoginServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/LoginService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$loginVerification =
      $grpc.ClientMethod<$0.VerificationRequest, $0.VerificationResponse>(
          '/LoginService/LoginVerification',
          ($0.VerificationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VerificationResponse.fromBuffer(value));
  static final _$logout = $grpc.ClientMethod<$1.IdRequest, $1.StringResponse>(
      '/LoginService/Logout',
      ($1.IdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringResponse.fromBuffer(value));

  LoginServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerificationResponse> loginVerification(
      $0.VerificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginVerification, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringResponse> logout($1.IdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }
}

abstract class LoginServiceBase extends $grpc.Service {
  $core.String get $name => 'LoginService';

  LoginServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.VerificationRequest, $0.VerificationResponse>(
            'LoginVerification',
            loginVerification_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.VerificationRequest.fromBuffer(value),
            ($0.VerificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.IdRequest, $1.StringResponse>(
        'Logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IdRequest.fromBuffer(value),
        ($1.StringResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.VerificationResponse> loginVerification_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.VerificationRequest> request) async {
    return loginVerification(call, await request);
  }

  $async.Future<$1.StringResponse> logout_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IdRequest> request) async {
    return logout(call, await request);
  }

  $async.Future<$0.LoginResponse> login(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.VerificationResponse> loginVerification(
      $grpc.ServiceCall call, $0.VerificationRequest request);
  $async.Future<$1.StringResponse> logout(
      $grpc.ServiceCall call, $1.IdRequest request);
}

class UserServiceClient extends $grpc.Client {
  static final _$getByID = $grpc.ClientMethod<$1.IdRequest, $0.User>(
      '/UserService/GetByID',
      ($1.IdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$register =
      $grpc.ClientMethod<$0.UserRequest, $0.LoginResponse>(
          '/UserService/Register',
          ($0.UserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$registerVerification =
      $grpc.ClientMethod<$0.VerificationRequest, $0.VerificationResponse>(
          '/UserService/RegisterVerification',
          ($0.VerificationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VerificationResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.UserRequest, $0.User>(
      '/UserService/Update',
      ($0.UserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$1.IdRequest, $1.StringResponse>(
      '/UserService/Delete',
      ($1.IdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringResponse.fromBuffer(value));
  static final _$setFcmToken =
      $grpc.ClientMethod<$0.FcmTokenRequest, $1.StringResponse>(
          '/UserService/SetFcmToken',
          ($0.FcmTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.User> getByID($1.IdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> register($0.UserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerificationResponse> registerVerification(
      $0.VerificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerVerification, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> update($0.UserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringResponse> delete($1.IdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringResponse> setFcmToken(
      $0.FcmTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setFcmToken, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.IdRequest, $0.User>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IdRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.LoginResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.VerificationRequest, $0.VerificationResponse>(
            'RegisterVerification',
            registerVerification_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.VerificationRequest.fromBuffer(value),
            ($0.VerificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.User>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.IdRequest, $1.StringResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IdRequest.fromBuffer(value),
        ($1.StringResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FcmTokenRequest, $1.StringResponse>(
        'SetFcmToken',
        setFcmToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FcmTokenRequest.fromBuffer(value),
        ($1.StringResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> getByID_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IdRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$0.LoginResponse> register_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.VerificationResponse> registerVerification_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.VerificationRequest> request) async {
    return registerVerification(call, await request);
  }

  $async.Future<$0.User> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$1.StringResponse> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IdRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$1.StringResponse> setFcmToken_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FcmTokenRequest> request) async {
    return setFcmToken(call, await request);
  }

  $async.Future<$0.User> getByID($grpc.ServiceCall call, $1.IdRequest request);
  $async.Future<$0.LoginResponse> register(
      $grpc.ServiceCall call, $0.UserRequest request);
  $async.Future<$0.VerificationResponse> registerVerification(
      $grpc.ServiceCall call, $0.VerificationRequest request);
  $async.Future<$0.User> update($grpc.ServiceCall call, $0.UserRequest request);
  $async.Future<$1.StringResponse> delete(
      $grpc.ServiceCall call, $1.IdRequest request);
  $async.Future<$1.StringResponse> setFcmToken(
      $grpc.ServiceCall call, $0.FcmTokenRequest request);
}
