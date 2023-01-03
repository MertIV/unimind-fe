///
//  Generated code. Do not modify.
//  source: calendar.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Calendar extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Calendar', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOM<meeting_id_list>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meetingIdList', subBuilder: meeting_id_list.create)
    ..hasRequiredFields = false
  ;

  Calendar._() : super();
  factory Calendar({
    $core.String? id,
    $core.String? userId,
    meeting_id_list? meetingIdList,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (meetingIdList != null) {
      _result.meetingIdList = meetingIdList;
    }
    return _result;
  }
  factory Calendar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Calendar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Calendar clone() => Calendar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Calendar copyWith(void Function(Calendar) updates) => super.copyWith((message) => updates(message as Calendar)) as Calendar; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Calendar create() => Calendar._();
  Calendar createEmptyInstance() => create();
  static $pb.PbList<Calendar> createRepeated() => $pb.PbList<Calendar>();
  @$core.pragma('dart2js:noInline')
  static Calendar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Calendar>(create);
  static Calendar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  meeting_id_list get meetingIdList => $_getN(2);
  @$pb.TagNumber(3)
  set meetingIdList(meeting_id_list v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMeetingIdList() => $_has(2);
  @$pb.TagNumber(3)
  void clearMeetingIdList() => clearField(3);
  @$pb.TagNumber(3)
  meeting_id_list ensureMeetingIdList() => $_ensure(2);
}

class meeting_id_list extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'meeting_id_list', createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list')
    ..hasRequiredFields = false
  ;

  meeting_id_list._() : super();
  factory meeting_id_list({
    $core.Iterable<$core.String>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory meeting_id_list.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory meeting_id_list.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  meeting_id_list clone() => meeting_id_list()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  meeting_id_list copyWith(void Function(meeting_id_list) updates) => super.copyWith((message) => updates(message as meeting_id_list)) as meeting_id_list; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static meeting_id_list create() => meeting_id_list._();
  meeting_id_list createEmptyInstance() => create();
  static $pb.PbList<meeting_id_list> createRepeated() => $pb.PbList<meeting_id_list>();
  @$core.pragma('dart2js:noInline')
  static meeting_id_list getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<meeting_id_list>(create);
  static meeting_id_list? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get list => $_getList(0);
}

