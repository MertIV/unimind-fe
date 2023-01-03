///
//  Generated code. Do not modify.
//  source: meeting.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use meetingDescriptor instead')
const Meeting$json = const {
  '1': 'Meeting',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'agenda', '3': 2, '4': 1, '5': 9, '10': 'agenda'},
    const {'1': 'default_password', '3': 3, '4': 1, '5': 8, '10': 'defaultPassword'},
    const {'1': 'duration', '3': 4, '4': 1, '5': 13, '10': 'duration'},
    const {'1': 'password', '3': 5, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'pre_schedule', '3': 6, '4': 1, '5': 8, '10': 'preSchedule'},
    const {'1': 'recurrence', '3': 7, '4': 1, '5': 11, '6': '.Recurrence', '10': 'recurrence'},
    const {'1': 'settings', '3': 8, '4': 1, '5': 11, '6': '.Settings', '10': 'settings'},
    const {'1': 'start_time', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startTime'},
    const {'1': 'topic', '3': 10, '4': 1, '5': 9, '10': 'topic'},
    const {'1': 'type', '3': 11, '4': 1, '5': 13, '10': 'type'},
    const {'1': 'consultant', '3': 12, '4': 1, '5': 11, '6': '.Consultant', '10': 'consultant'},
  ],
};

/// Descriptor for `Meeting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meetingDescriptor = $convert.base64Decode('CgdNZWV0aW5nEg4KAmlkGAEgASgJUgJpZBIWCgZhZ2VuZGEYAiABKAlSBmFnZW5kYRIpChBkZWZhdWx0X3Bhc3N3b3JkGAMgASgIUg9kZWZhdWx0UGFzc3dvcmQSGgoIZHVyYXRpb24YBCABKA1SCGR1cmF0aW9uEhoKCHBhc3N3b3JkGAUgASgJUghwYXNzd29yZBIhCgxwcmVfc2NoZWR1bGUYBiABKAhSC3ByZVNjaGVkdWxlEisKCnJlY3VycmVuY2UYByABKAsyCy5SZWN1cnJlbmNlUgpyZWN1cnJlbmNlEiUKCHNldHRpbmdzGAggASgLMgkuU2V0dGluZ3NSCHNldHRpbmdzEjkKCnN0YXJ0X3RpbWUYCSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglzdGFydFRpbWUSFAoFdG9waWMYCiABKAlSBXRvcGljEhIKBHR5cGUYCyABKA1SBHR5cGUSKwoKY29uc3VsdGFudBgMIAEoCzILLkNvbnN1bHRhbnRSCmNvbnN1bHRhbnQ=');
@$core.Deprecated('Use recurrenceDescriptor instead')
const Recurrence$json = const {
  '1': 'Recurrence',
  '2': const [
    const {'1': 'end_date_time', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDateTime'},
    const {'1': 'end_times', '3': 2, '4': 1, '5': 13, '10': 'endTimes'},
    const {'1': 'monthly_day', '3': 3, '4': 1, '5': 13, '10': 'monthlyDay'},
    const {'1': 'monthly_week', '3': 4, '4': 1, '5': 13, '10': 'monthlyWeek'},
    const {'1': 'monthly_week_day', '3': 5, '4': 1, '5': 13, '10': 'monthlyWeekDay'},
    const {'1': 'repeat_interval', '3': 6, '4': 1, '5': 13, '10': 'repeatInterval'},
    const {'1': 'type', '3': 7, '4': 1, '5': 13, '10': 'type'},
    const {'1': 'weekly_days', '3': 8, '4': 1, '5': 9, '10': 'weeklyDays'},
  ],
};

/// Descriptor for `Recurrence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recurrenceDescriptor = $convert.base64Decode('CgpSZWN1cnJlbmNlEj4KDWVuZF9kYXRlX3RpbWUYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtlbmREYXRlVGltZRIbCgllbmRfdGltZXMYAiABKA1SCGVuZFRpbWVzEh8KC21vbnRobHlfZGF5GAMgASgNUgptb250aGx5RGF5EiEKDG1vbnRobHlfd2VlaxgEIAEoDVILbW9udGhseVdlZWsSKAoQbW9udGhseV93ZWVrX2RheRgFIAEoDVIObW9udGhseVdlZWtEYXkSJwoPcmVwZWF0X2ludGVydmFsGAYgASgNUg5yZXBlYXRJbnRlcnZhbBISCgR0eXBlGAcgASgNUgR0eXBlEh8KC3dlZWtseV9kYXlzGAggASgJUgp3ZWVrbHlEYXlz');
@$core.Deprecated('Use settingsDescriptor instead')
const Settings$json = const {
  '1': 'Settings',
  '2': const [
    const {'1': 'additional_data_center_regions', '3': 1, '4': 3, '5': 9, '10': 'additionalDataCenterRegions'},
    const {'1': 'approval_type', '3': 5, '4': 1, '5': 13, '10': 'approvalType'},
    const {'1': 'auto_recording', '3': 11, '4': 1, '5': 9, '10': 'autoRecording'},
  ],
};

/// Descriptor for `Settings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settingsDescriptor = $convert.base64Decode('CghTZXR0aW5ncxJDCh5hZGRpdGlvbmFsX2RhdGFfY2VudGVyX3JlZ2lvbnMYASADKAlSG2FkZGl0aW9uYWxEYXRhQ2VudGVyUmVnaW9ucxIjCg1hcHByb3ZhbF90eXBlGAUgASgNUgxhcHByb3ZhbFR5cGUSJQoOYXV0b19yZWNvcmRpbmcYCyABKAlSDWF1dG9SZWNvcmRpbmc=');
@$core.Deprecated('Use consultantDescriptor instead')
const Consultant$json = const {
  '1': 'Consultant',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'image_url', '3': 2, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'fullname', '3': 3, '4': 1, '5': 9, '10': 'fullname'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Consultant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consultantDescriptor = $convert.base64Decode('CgpDb25zdWx0YW50EhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBIbCglpbWFnZV91cmwYAiABKAlSCGltYWdlVXJsEhoKCGZ1bGxuYW1lGAMgASgJUghmdWxsbmFtZRIgCgtkZXNjcmlwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24=');
@$core.Deprecated('Use meetingRequestDescriptor instead')
const MeetingRequest$json = const {
  '1': 'MeetingRequest',
  '2': const [
    const {'1': 'meeting', '3': 1, '4': 1, '5': 11, '6': '.Meeting', '10': 'meeting'},
  ],
};

/// Descriptor for `MeetingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meetingRequestDescriptor = $convert.base64Decode('Cg5NZWV0aW5nUmVxdWVzdBIiCgdtZWV0aW5nGAEgASgLMgguTWVldGluZ1IHbWVldGluZw==');
