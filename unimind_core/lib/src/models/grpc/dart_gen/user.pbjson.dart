///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userTypeDescriptor instead')
const UserType$json = const {
  '1': 'UserType',
  '2': const [
    const {'1': 'PSYCHIATRIST', '2': 0},
    const {'1': 'PATIENT', '2': 1},
  ],
};

/// Descriptor for `UserType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userTypeDescriptor = $convert.base64Decode('CghVc2VyVHlwZRIQCgxQU1lDSElBVFJJU1QQABILCgdQQVRJRU5UEAE=');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'userId', '17': true},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'email', '17': true},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'phone', '17': true},
    const {'1': 'payment_info_id_list', '3': 4, '4': 1, '5': 11, '6': '.payment_info_id_list', '9': 3, '10': 'paymentInfoIdList', '17': true},
    const {'1': 'fullname', '3': 5, '4': 1, '5': 9, '9': 4, '10': 'fullname', '17': true},
    const {'1': 'birth_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 5, '10': 'birthDate', '17': true},
    const {'1': 'type', '3': 7, '4': 1, '5': 14, '6': '.UserType', '9': 6, '10': 'type', '17': true},
    const {'1': 'user_metadata', '3': 8, '4': 1, '5': 11, '6': '.user_metadata', '9': 7, '10': 'userMetadata', '17': true},
    const {'1': 'created_at', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 8, '10': 'createdAt', '17': true},
    const {'1': 'updated_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 9, '10': 'updatedAt', '17': true},
    const {'1': 'is_archived', '3': 11, '4': 1, '5': 8, '9': 10, '10': 'isArchived', '17': true},
  ],
  '8': const [
    const {'1': '_user_id'},
    const {'1': '_email'},
    const {'1': '_phone'},
    const {'1': '_payment_info_id_list'},
    const {'1': '_fullname'},
    const {'1': '_birth_date'},
    const {'1': '_type'},
    const {'1': '_user_metadata'},
    const {'1': '_created_at'},
    const {'1': '_updated_at'},
    const {'1': '_is_archived'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhwKB3VzZXJfaWQYASABKAlIAFIGdXNlcklkiAEBEhkKBWVtYWlsGAIgASgJSAFSBWVtYWlsiAEBEhkKBXBob25lGAMgASgJSAJSBXBob25liAEBEksKFHBheW1lbnRfaW5mb19pZF9saXN0GAQgASgLMhUucGF5bWVudF9pbmZvX2lkX2xpc3RIA1IRcGF5bWVudEluZm9JZExpc3SIAQESHwoIZnVsbG5hbWUYBSABKAlIBFIIZnVsbG5hbWWIAQESPgoKYmlydGhfZGF0ZRgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIBVIJYmlydGhEYXRliAEBEiIKBHR5cGUYByABKA4yCS5Vc2VyVHlwZUgGUgR0eXBliAEBEjgKDXVzZXJfbWV0YWRhdGEYCCABKAsyDi51c2VyX21ldGFkYXRhSAdSDHVzZXJNZXRhZGF0YYgBARI+CgpjcmVhdGVkX2F0GAkgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgIUgljcmVhdGVkQXSIAQESPgoKdXBkYXRlZF9hdBgKIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBICVIJdXBkYXRlZEF0iAEBEiQKC2lzX2FyY2hpdmVkGAsgASgISApSCmlzQXJjaGl2ZWSIAQFCCgoIX3VzZXJfaWRCCAoGX2VtYWlsQggKBl9waG9uZUIXChVfcGF5bWVudF9pbmZvX2lkX2xpc3RCCwoJX2Z1bGxuYW1lQg0KC19iaXJ0aF9kYXRlQgcKBV90eXBlQhAKDl91c2VyX21ldGFkYXRhQg0KC19jcmVhdGVkX2F0Qg0KC191cGRhdGVkX2F0Qg4KDF9pc19hcmNoaXZlZA==');
@$core.Deprecated('Use user_metadataDescriptor instead')
const user_metadata$json = const {
  '1': 'user_metadata',
  '2': const [
    const {'1': 'list', '3': 8, '4': 3, '5': 11, '6': '.Question', '10': 'list'},
  ],
};

/// Descriptor for `user_metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List user_metadataDescriptor = $convert.base64Decode('Cg11c2VyX21ldGFkYXRhEh0KBGxpc3QYCCADKAsyCS5RdWVzdGlvblIEbGlzdA==');
@$core.Deprecated('Use payment_info_id_listDescriptor instead')
const payment_info_id_list$json = const {
  '1': 'payment_info_id_list',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 9, '10': 'list'},
  ],
};

/// Descriptor for `payment_info_id_list`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payment_info_id_listDescriptor = $convert.base64Decode('ChRwYXltZW50X2luZm9faWRfbGlzdBISCgRsaXN0GAEgAygJUgRsaXN0');
@$core.Deprecated('Use questionDescriptor instead')
const Question$json = const {
  '1': 'Question',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    const {'1': 'options', '3': 2, '4': 3, '5': 9, '10': 'options'},
    const {'1': 'selected_answer', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'selectedAnswer', '17': true},
  ],
  '8': const [
    const {'1': '_title'},
    const {'1': '_selected_answer'},
  ],
};

/// Descriptor for `Question`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionDescriptor = $convert.base64Decode('CghRdWVzdGlvbhIZCgV0aXRsZRgBIAEoCUgAUgV0aXRsZYgBARIYCgdvcHRpb25zGAIgAygJUgdvcHRpb25zEiwKD3NlbGVjdGVkX2Fuc3dlchgDIAEoCUgBUg5zZWxlY3RlZEFuc3dlcogBAUIICgZfdGl0bGVCEgoQX3NlbGVjdGVkX2Fuc3dlcg==');
@$core.Deprecated('Use fcmTokenDescriptor instead')
const FcmToken$json = const {
  '1': 'FcmToken',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'fcm_token', '3': 2, '4': 1, '5': 9, '10': 'fcmToken'},
  ],
};

/// Descriptor for `FcmToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fcmTokenDescriptor = $convert.base64Decode('CghGY21Ub2tlbhIbCglkZXZpY2VfaWQYASABKAlSCGRldmljZUlkEhsKCWZjbV90b2tlbhgCIAEoCVIIZmNtVG9rZW4=');
@$core.Deprecated('Use userRequestDescriptor instead')
const UserRequest$json = const {
  '1': 'UserRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.User', '10': 'user'},
  ],
};

/// Descriptor for `UserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRequestDescriptor = $convert.base64Decode('CgtVc2VyUmVxdWVzdBIZCgR1c2VyGAEgASgLMgUuVXNlclIEdXNlcg==');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhQKBXBob25lGAIgASgJUgVwaG9uZQ==');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'duration', '3': 2, '4': 1, '5': 13, '10': 'duration'},
    const {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USGgoIZHVyYXRpb24YAiABKA1SCGR1cmF0aW9uEhQKBWVycm9yGAMgASgJUgVlcnJvcg==');
@$core.Deprecated('Use verificationRequestDescriptor instead')
const VerificationRequest$json = const {
  '1': 'VerificationRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `VerificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationRequestDescriptor = $convert.base64Decode('ChNWZXJpZmljYXRpb25SZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIUCgVwaG9uZRgCIAEoCVIFcGhvbmUSEgoEY29kZRgDIAEoCVIEY29kZQ==');
@$core.Deprecated('Use verificationResponseDescriptor instead')
const VerificationResponse$json = const {
  '1': 'VerificationResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `VerificationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationResponseDescriptor = $convert.base64Decode('ChRWZXJpZmljYXRpb25SZXNwb25zZRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SFwoHdXNlcl9pZBgCIAEoCVIGdXNlcklkEhQKBWVycm9yGAMgASgJUgVlcnJvcg==');
@$core.Deprecated('Use fcmTokenRequestDescriptor instead')
const FcmTokenRequest$json = const {
  '1': 'FcmTokenRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'fcmToken', '3': 2, '4': 1, '5': 11, '6': '.FcmToken', '10': 'fcmToken'},
  ],
};

/// Descriptor for `FcmTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fcmTokenRequestDescriptor = $convert.base64Decode('Cg9GY21Ub2tlblJlcXVlc3QSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEiUKCGZjbVRva2VuGAIgASgLMgkuRmNtVG9rZW5SCGZjbVRva2Vu');
