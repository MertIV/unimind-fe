///
//  Generated code. Do not modify.
//  source: web_socket.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use webSocketMessageDescriptor instead')
const WebSocketMessage$json = const {
  '1': 'WebSocketMessage',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
    const {'1': 'operation', '3': 3, '4': 1, '5': 9, '10': 'operation'},
  ],
};

/// Descriptor for `WebSocketMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webSocketMessageDescriptor = $convert.base64Decode('ChBXZWJTb2NrZXRNZXNzYWdlEhIKBHR5cGUYASABKAlSBHR5cGUSEgoEZGF0YRgCIAEoCVIEZGF0YRIcCglvcGVyYXRpb24YAyABKAlSCW9wZXJhdGlvbg==');
@$core.Deprecated('Use connectionRequestDescriptor instead')
const ConnectionRequest$json = const {
  '1': 'ConnectionRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.User', '10': 'user'},
    const {'1': 'connectionCode', '3': 2, '4': 1, '5': 9, '10': 'connectionCode'},
  ],
};

/// Descriptor for `ConnectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionRequestDescriptor = $convert.base64Decode('ChFDb25uZWN0aW9uUmVxdWVzdBIZCgR1c2VyGAEgASgLMgUuVXNlclIEdXNlchImCg5jb25uZWN0aW9uQ29kZRgCIAEoCVIOY29ubmVjdGlvbkNvZGU=');
