///
//  Generated code. Do not modify.
//  source: meeting.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use meetingDescriptor instead')
const Meeting$json = const {
  '1': 'Meeting',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    const {'1': 'agenda', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'agenda', '17': true},
    const {'1': 'default_password', '3': 3, '4': 1, '5': 8, '9': 2, '10': 'defaultPassword', '17': true},
    const {'1': 'duration', '3': 4, '4': 1, '5': 13, '9': 3, '10': 'duration', '17': true},
    const {'1': 'password', '3': 5, '4': 1, '5': 9, '9': 4, '10': 'password', '17': true},
    const {'1': 'pre_schedule', '3': 6, '4': 1, '5': 8, '9': 5, '10': 'preSchedule', '17': true},
    const {'1': 'recurrence', '3': 7, '4': 1, '5': 11, '6': '.Recurrence', '9': 6, '10': 'recurrence', '17': true},
    const {'1': 'settings', '3': 8, '4': 1, '5': 11, '6': '.Settings', '9': 7, '10': 'settings', '17': true},
    const {'1': 'start_time', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 8, '10': 'startTime', '17': true},
    const {'1': 'topic', '3': 10, '4': 1, '5': 9, '9': 9, '10': 'topic', '17': true},
    const {'1': 'type', '3': 11, '4': 1, '5': 13, '9': 10, '10': 'type', '17': true},
    const {'1': 'host', '3': 12, '4': 1, '5': 11, '6': '.Consultant', '9': 11, '10': 'host', '17': true},
  ],
  '8': const [
    const {'1': '_id'},
    const {'1': '_agenda'},
    const {'1': '_default_password'},
    const {'1': '_duration'},
    const {'1': '_password'},
    const {'1': '_pre_schedule'},
    const {'1': '_recurrence'},
    const {'1': '_settings'},
    const {'1': '_start_time'},
    const {'1': '_topic'},
    const {'1': '_type'},
    const {'1': '_host'},
  ],
};

/// Descriptor for `Meeting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meetingDescriptor = $convert.base64Decode('CgdNZWV0aW5nEhMKAmlkGAEgASgJSABSAmlkiAEBEhsKBmFnZW5kYRgCIAEoCUgBUgZhZ2VuZGGIAQESLgoQZGVmYXVsdF9wYXNzd29yZBgDIAEoCEgCUg9kZWZhdWx0UGFzc3dvcmSIAQESHwoIZHVyYXRpb24YBCABKA1IA1IIZHVyYXRpb26IAQESHwoIcGFzc3dvcmQYBSABKAlIBFIIcGFzc3dvcmSIAQESJgoMcHJlX3NjaGVkdWxlGAYgASgISAVSC3ByZVNjaGVkdWxliAEBEjAKCnJlY3VycmVuY2UYByABKAsyCy5SZWN1cnJlbmNlSAZSCnJlY3VycmVuY2WIAQESKgoIc2V0dGluZ3MYCCABKAsyCS5TZXR0aW5nc0gHUghzZXR0aW5nc4gBARI+CgpzdGFydF90aW1lGAkgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgIUglzdGFydFRpbWWIAQESGQoFdG9waWMYCiABKAlICVIFdG9waWOIAQESFwoEdHlwZRgLIAEoDUgKUgR0eXBliAEBEiQKBGhvc3QYDCABKAsyCy5Db25zdWx0YW50SAtSBGhvc3SIAQFCBQoDX2lkQgkKB19hZ2VuZGFCEwoRX2RlZmF1bHRfcGFzc3dvcmRCCwoJX2R1cmF0aW9uQgsKCV9wYXNzd29yZEIPCg1fcHJlX3NjaGVkdWxlQg0KC19yZWN1cnJlbmNlQgsKCV9zZXR0aW5nc0INCgtfc3RhcnRfdGltZUIICgZfdG9waWNCBwoFX3R5cGVCBwoFX2hvc3Q=');
@$core.Deprecated('Use recurrenceDescriptor instead')
const Recurrence$json = const {
  '1': 'Recurrence',
  '2': const [
    const {'1': 'end_date_time', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'endDateTime', '17': true},
    const {'1': 'end_times', '3': 2, '4': 1, '5': 13, '9': 1, '10': 'endTimes', '17': true},
    const {'1': 'monthly_day', '3': 3, '4': 1, '5': 13, '9': 2, '10': 'monthlyDay', '17': true},
    const {'1': 'monthly_week', '3': 4, '4': 1, '5': 13, '9': 3, '10': 'monthlyWeek', '17': true},
    const {'1': 'monthly_week_day', '3': 5, '4': 1, '5': 13, '9': 4, '10': 'monthlyWeekDay', '17': true},
    const {'1': 'repeat_interval', '3': 6, '4': 1, '5': 13, '9': 5, '10': 'repeatInterval', '17': true},
    const {'1': 'type', '3': 7, '4': 1, '5': 13, '9': 6, '10': 'type', '17': true},
    const {'1': 'weekly_days', '3': 8, '4': 1, '5': 9, '9': 7, '10': 'weeklyDays', '17': true},
  ],
  '8': const [
    const {'1': '_end_date_time'},
    const {'1': '_end_times'},
    const {'1': '_monthly_day'},
    const {'1': '_monthly_week'},
    const {'1': '_monthly_week_day'},
    const {'1': '_repeat_interval'},
    const {'1': '_type'},
    const {'1': '_weekly_days'},
  ],
};

/// Descriptor for `Recurrence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recurrenceDescriptor = $convert.base64Decode('CgpSZWN1cnJlbmNlEkMKDWVuZF9kYXRlX3RpbWUYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSABSC2VuZERhdGVUaW1liAEBEiAKCWVuZF90aW1lcxgCIAEoDUgBUghlbmRUaW1lc4gBARIkCgttb250aGx5X2RheRgDIAEoDUgCUgptb250aGx5RGF5iAEBEiYKDG1vbnRobHlfd2VlaxgEIAEoDUgDUgttb250aGx5V2Vla4gBARItChBtb250aGx5X3dlZWtfZGF5GAUgASgNSARSDm1vbnRobHlXZWVrRGF5iAEBEiwKD3JlcGVhdF9pbnRlcnZhbBgGIAEoDUgFUg5yZXBlYXRJbnRlcnZhbIgBARIXCgR0eXBlGAcgASgNSAZSBHR5cGWIAQESJAoLd2Vla2x5X2RheXMYCCABKAlIB1IKd2Vla2x5RGF5c4gBAUIQCg5fZW5kX2RhdGVfdGltZUIMCgpfZW5kX3RpbWVzQg4KDF9tb250aGx5X2RheUIPCg1fbW9udGhseV93ZWVrQhMKEV9tb250aGx5X3dlZWtfZGF5QhIKEF9yZXBlYXRfaW50ZXJ2YWxCBwoFX3R5cGVCDgoMX3dlZWtseV9kYXlz');
@$core.Deprecated('Use settingsDescriptor instead')
const Settings$json = const {
  '1': 'Settings',
  '2': const [
    const {'1': 'additional_data_center_regions', '3': 1, '4': 1, '5': 11, '6': '.additional_data_center_regions', '9': 0, '10': 'additionalDataCenterRegions', '17': true},
    const {'1': 'approval_type', '3': 5, '4': 1, '5': 13, '9': 1, '10': 'approvalType', '17': true},
    const {'1': 'auto_recording', '3': 11, '4': 1, '5': 9, '9': 2, '10': 'autoRecording', '17': true},
  ],
  '8': const [
    const {'1': '_additional_data_center_regions'},
    const {'1': '_approval_type'},
    const {'1': '_auto_recording'},
  ],
};

/// Descriptor for `Settings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settingsDescriptor = $convert.base64Decode('CghTZXR0aW5ncxJpCh5hZGRpdGlvbmFsX2RhdGFfY2VudGVyX3JlZ2lvbnMYASABKAsyHy5hZGRpdGlvbmFsX2RhdGFfY2VudGVyX3JlZ2lvbnNIAFIbYWRkaXRpb25hbERhdGFDZW50ZXJSZWdpb25ziAEBEigKDWFwcHJvdmFsX3R5cGUYBSABKA1IAVIMYXBwcm92YWxUeXBliAEBEioKDmF1dG9fcmVjb3JkaW5nGAsgASgJSAJSDWF1dG9SZWNvcmRpbmeIAQFCIQofX2FkZGl0aW9uYWxfZGF0YV9jZW50ZXJfcmVnaW9uc0IQCg5fYXBwcm92YWxfdHlwZUIRCg9fYXV0b19yZWNvcmRpbmc=');
@$core.Deprecated('Use additional_data_center_regionsDescriptor instead')
const additional_data_center_regions$json = const {
  '1': 'additional_data_center_regions',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 9, '10': 'list'},
  ],
};

/// Descriptor for `additional_data_center_regions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List additional_data_center_regionsDescriptor = $convert.base64Decode('Ch5hZGRpdGlvbmFsX2RhdGFfY2VudGVyX3JlZ2lvbnMSEgoEbGlzdBgBIAMoCVIEbGlzdA==');
@$core.Deprecated('Use consultantDescriptor instead')
const Consultant$json = const {
  '1': 'Consultant',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'userId', '17': true},
    const {'1': 'image_url', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'imageUrl', '17': true},
    const {'1': 'fullname', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'fullname', '17': true},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'description', '17': true},
  ],
  '8': const [
    const {'1': '_user_id'},
    const {'1': '_image_url'},
    const {'1': '_fullname'},
    const {'1': '_description'},
  ],
};

/// Descriptor for `Consultant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consultantDescriptor = $convert.base64Decode('CgpDb25zdWx0YW50EhwKB3VzZXJfaWQYASABKAlIAFIGdXNlcklkiAEBEiAKCWltYWdlX3VybBgCIAEoCUgBUghpbWFnZVVybIgBARIfCghmdWxsbmFtZRgDIAEoCUgCUghmdWxsbmFtZYgBARIlCgtkZXNjcmlwdGlvbhgEIAEoCUgDUgtkZXNjcmlwdGlvbogBAUIKCghfdXNlcl9pZEIMCgpfaW1hZ2VfdXJsQgsKCV9mdWxsbmFtZUIOCgxfZGVzY3JpcHRpb24=');
@$core.Deprecated('Use meetingRequestDescriptor instead')
const MeetingRequest$json = const {
  '1': 'MeetingRequest',
  '2': const [
    const {'1': 'meeting', '3': 1, '4': 1, '5': 11, '6': '.Meeting', '10': 'meeting'},
  ],
};

/// Descriptor for `MeetingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meetingRequestDescriptor = $convert.base64Decode('Cg5NZWV0aW5nUmVxdWVzdBIiCgdtZWV0aW5nGAEgASgLMgguTWVldGluZ1IHbWVldGluZw==');
@$core.Deprecated('Use meetingListResponseDescriptor instead')
const MeetingListResponse$json = const {
  '1': 'MeetingListResponse',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.Meeting', '10': 'list'},
  ],
};

/// Descriptor for `MeetingListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meetingListResponseDescriptor = $convert.base64Decode('ChNNZWV0aW5nTGlzdFJlc3BvbnNlEhwKBGxpc3QYASADKAsyCC5NZWV0aW5nUgRsaXN0');
@$core.Deprecated('Use testResultRequestDescriptor instead')
const TestResultRequest$json = const {
  '1': 'TestResultRequest',
  '2': const [
    const {'1': 'user_metadata', '3': 1, '4': 1, '5': 11, '6': '.user_metadata', '9': 0, '10': 'userMetadata', '17': true},
  ],
  '8': const [
    const {'1': '_user_metadata'},
  ],
};

/// Descriptor for `TestResultRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testResultRequestDescriptor = $convert.base64Decode('ChFUZXN0UmVzdWx0UmVxdWVzdBI4Cg11c2VyX21ldGFkYXRhGAEgASgLMg4udXNlcl9tZXRhZGF0YUgAUgx1c2VyTWV0YWRhdGGIAQFCEAoOX3VzZXJfbWV0YWRhdGE=');
