///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class UserType extends $pb.ProtobufEnum {
  static const UserType PSYCHIATRIST = UserType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PSYCHIATRIST');
  static const UserType PATIENT = UserType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PATIENT');

  static const $core.List<UserType> values = <UserType> [
    PSYCHIATRIST,
    PATIENT,
  ];

  static final $core.Map<$core.int, UserType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserType? valueOf($core.int value) => _byValue[value];

  const UserType._($core.int v, $core.String n) : super(v, n);
}

