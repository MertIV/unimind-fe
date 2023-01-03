///
//  Generated code. Do not modify.
//  source: payment_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use paymentInfoDescriptor instead')
const PaymentInfo$json = const {
  '1': 'PaymentInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'meeting_id', '3': 3, '4': 1, '5': 9, '10': 'meetingId'},
    const {'1': 'paymentType', '3': 4, '4': 1, '5': 13, '10': 'paymentType'},
    const {'1': 'metadata', '3': 5, '4': 3, '5': 11, '6': '.PaymentInfo.MetadataEntry', '10': 'metadata'},
  ],
  '3': const [PaymentInfo_MetadataEntry$json],
};

@$core.Deprecated('Use paymentInfoDescriptor instead')
const PaymentInfo_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `PaymentInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentInfoDescriptor = $convert.base64Decode('CgtQYXltZW50SW5mbxIOCgJpZBgBIAEoCVICaWQSFwoHdXNlcl9pZBgCIAEoCVIGdXNlcklkEh0KCm1lZXRpbmdfaWQYAyABKAlSCW1lZXRpbmdJZBIgCgtwYXltZW50VHlwZRgEIAEoDVILcGF5bWVudFR5cGUSNgoIbWV0YWRhdGEYBSADKAsyGi5QYXltZW50SW5mby5NZXRhZGF0YUVudHJ5UghtZXRhZGF0YRo7Cg1NZXRhZGF0YUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use paymentInfoListDescriptor instead')
const PaymentInfoList$json = const {
  '1': 'PaymentInfoList',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.PaymentInfo', '10': 'list'},
  ],
};

/// Descriptor for `PaymentInfoList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentInfoListDescriptor = $convert.base64Decode('Cg9QYXltZW50SW5mb0xpc3QSIAoEbGlzdBgBIAMoCzIMLlBheW1lbnRJbmZvUgRsaXN0');
@$core.Deprecated('Use paymentInfoRequestDescriptor instead')
const PaymentInfoRequest$json = const {
  '1': 'PaymentInfoRequest',
  '2': const [
    const {'1': 'payment_info', '3': 1, '4': 1, '5': 11, '6': '.PaymentInfo', '10': 'paymentInfo'},
  ],
};

/// Descriptor for `PaymentInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentInfoRequestDescriptor = $convert.base64Decode('ChJQYXltZW50SW5mb1JlcXVlc3QSLwoMcGF5bWVudF9pbmZvGAEgASgLMgwuUGF5bWVudEluZm9SC3BheW1lbnRJbmZv');
