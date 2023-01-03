///
//  Generated code. Do not modify.
//  source: calendar.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use calendarDescriptor instead')
const Calendar$json = const {
  '1': 'Calendar',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'userId', '17': true},
    const {'1': 'meeting_id_list', '3': 3, '4': 1, '5': 11, '6': '.meeting_id_list', '9': 2, '10': 'meetingIdList', '17': true},
  ],
  '8': const [
    const {'1': '_id'},
    const {'1': '_user_id'},
    const {'1': '_meeting_id_list'},
  ],
};

/// Descriptor for `Calendar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calendarDescriptor = $convert.base64Decode('CghDYWxlbmRhchITCgJpZBgBIAEoCUgAUgJpZIgBARIcCgd1c2VyX2lkGAIgASgJSAFSBnVzZXJJZIgBARI9Cg9tZWV0aW5nX2lkX2xpc3QYAyABKAsyEC5tZWV0aW5nX2lkX2xpc3RIAlINbWVldGluZ0lkTGlzdIgBAUIFCgNfaWRCCgoIX3VzZXJfaWRCEgoQX21lZXRpbmdfaWRfbGlzdA==');
@$core.Deprecated('Use meeting_id_listDescriptor instead')
const meeting_id_list$json = const {
  '1': 'meeting_id_list',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 9, '10': 'list'},
  ],
};

/// Descriptor for `meeting_id_list`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meeting_id_listDescriptor = $convert.base64Decode('Cg9tZWV0aW5nX2lkX2xpc3QSEgoEbGlzdBgBIAMoCVIEbGlzdA==');
