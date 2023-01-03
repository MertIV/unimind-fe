///
//  Generated code. Do not modify.
//  source: device_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use deviceInfoDescriptor instead')
const DeviceInfo$json = const {
  '1': 'DeviceInfo',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'userId', '17': true},
    const {'1': 'last_login', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'lastLogin', '17': true},
  ],
  '8': const [
    const {'1': '_user_id'},
    const {'1': '_last_login'},
  ],
};

/// Descriptor for `DeviceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoDescriptor = $convert.base64Decode('CgpEZXZpY2VJbmZvEhsKCWRldmljZV9pZBgBIAEoCVIIZGV2aWNlSWQSHAoHdXNlcl9pZBgCIAEoCUgAUgZ1c2VySWSIAQESPgoKbGFzdF9sb2dpbhgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAVIJbGFzdExvZ2luiAEBQgoKCF91c2VyX2lkQg0KC19sYXN0X2xvZ2lu');
@$core.Deprecated('Use deviceInfoRequestDescriptor instead')
const DeviceInfoRequest$json = const {
  '1': 'DeviceInfoRequest',
  '2': const [
    const {'1': 'device_info', '3': 1, '4': 1, '5': 11, '6': '.DeviceInfo', '10': 'deviceInfo'},
  ],
};

/// Descriptor for `DeviceInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoRequestDescriptor = $convert.base64Decode('ChFEZXZpY2VJbmZvUmVxdWVzdBIsCgtkZXZpY2VfaW5mbxgBIAEoCzILLkRldmljZUluZm9SCmRldmljZUluZm8=');
@$core.Deprecated('Use deviceInfoResponseDescriptor instead')
const DeviceInfoResponse$json = const {
  '1': 'DeviceInfoResponse',
  '2': const [
    const {'1': 'show_onboarding', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'showOnboarding', '17': true},
  ],
  '8': const [
    const {'1': '_show_onboarding'},
  ],
};

/// Descriptor for `DeviceInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoResponseDescriptor = $convert.base64Decode('ChJEZXZpY2VJbmZvUmVzcG9uc2USLAoPc2hvd19vbmJvYXJkaW5nGAEgASgISABSDnNob3dPbmJvYXJkaW5niAEBQhIKEF9zaG93X29uYm9hcmRpbmc=');
