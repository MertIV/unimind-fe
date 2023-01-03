///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

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
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'payment_info_id_list', '3': 4, '4': 3, '5': 9, '10': 'paymentInfoIdList'},
    const {'1': 'fullname', '3': 5, '4': 1, '5': 9, '10': 'fullname'},
    const {'1': 'birth_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthDate'},
    const {'1': 'type', '3': 7, '4': 1, '5': 14, '6': '.UserType', '10': 'type'},
    const {'1': 'user_metadata', '3': 8, '4': 3, '5': 11, '6': '.Question', '10': 'userMetadata'},
    const {'1': 'created_at', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'is_archived', '3': 11, '4': 1, '5': 8, '10': 'isArchived'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW1haWwSFAoFcGhvbmUYAyABKAlSBXBob25lEi8KFHBheW1lbnRfaW5mb19pZF9saXN0GAQgAygJUhFwYXltZW50SW5mb0lkTGlzdBIaCghmdWxsbmFtZRgFIAEoCVIIZnVsbG5hbWUSOQoKYmlydGhfZGF0ZRgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWJpcnRoRGF0ZRIdCgR0eXBlGAcgASgOMgkuVXNlclR5cGVSBHR5cGUSLgoNdXNlcl9tZXRhZGF0YRgIIAMoCzIJLlF1ZXN0aW9uUgx1c2VyTWV0YWRhdGESOQoKY3JlYXRlZF9hdBgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0Eh8KC2lzX2FyY2hpdmVkGAsgASgIUgppc0FyY2hpdmVk');
@$core.Deprecated('Use questionDescriptor instead')
const Question$json = const {
  '1': 'Question',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'options', '3': 2, '4': 3, '5': 9, '10': 'options'},
    const {'1': 'selected_answer', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'selectedAnswer', '17': true},
  ],
  '8': const [
    const {'1': '_selected_answer'},
  ],
};

/// Descriptor for `Question`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionDescriptor = $convert.base64Decode('CghRdWVzdGlvbhIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSGAoHb3B0aW9ucxgCIAMoCVIHb3B0aW9ucxIsCg9zZWxlY3RlZF9hbnN3ZXIYAyABKAlIAFIOc2VsZWN0ZWRBbnN3ZXKIAQFCEgoQX3NlbGVjdGVkX2Fuc3dlcg==');
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
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `VerificationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationResponseDescriptor = $convert.base64Decode('ChRWZXJpZmljYXRpb25SZXNwb25zZRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SFAoFZXJyb3IYAiABKAlSBWVycm9y');
