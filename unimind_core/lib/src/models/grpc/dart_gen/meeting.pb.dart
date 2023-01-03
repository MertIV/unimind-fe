///
//  Generated code. Do not modify.
//  source: meeting.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $6;
import 'user.pb.dart' as $0;

class Meeting extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Meeting', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agenda')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultPassword')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duration', $pb.PbFieldType.OU3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preSchedule')
    ..aOM<Recurrence>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recurrence', subBuilder: Recurrence.create)
    ..aOM<Settings>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settings', subBuilder: Settings.create)
    ..aOM<$6.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime', subBuilder: $6.Timestamp.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OU3)
    ..aOM<Consultant>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'host', subBuilder: Consultant.create)
    ..hasRequiredFields = false
  ;

  Meeting._() : super();
  factory Meeting({
    $core.String? id,
    $core.String? agenda,
    $core.bool? defaultPassword,
    $core.int? duration,
    $core.String? password,
    $core.bool? preSchedule,
    Recurrence? recurrence,
    Settings? settings,
    $6.Timestamp? startTime,
    $core.String? topic,
    $core.int? type,
    Consultant? host,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (agenda != null) {
      _result.agenda = agenda;
    }
    if (defaultPassword != null) {
      _result.defaultPassword = defaultPassword;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    if (password != null) {
      _result.password = password;
    }
    if (preSchedule != null) {
      _result.preSchedule = preSchedule;
    }
    if (recurrence != null) {
      _result.recurrence = recurrence;
    }
    if (settings != null) {
      _result.settings = settings;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (topic != null) {
      _result.topic = topic;
    }
    if (type != null) {
      _result.type = type;
    }
    if (host != null) {
      _result.host = host;
    }
    return _result;
  }
  factory Meeting.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Meeting.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Meeting clone() => Meeting()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Meeting copyWith(void Function(Meeting) updates) => super.copyWith((message) => updates(message as Meeting)) as Meeting; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Meeting create() => Meeting._();
  Meeting createEmptyInstance() => create();
  static $pb.PbList<Meeting> createRepeated() => $pb.PbList<Meeting>();
  @$core.pragma('dart2js:noInline')
  static Meeting getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Meeting>(create);
  static Meeting? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get agenda => $_getSZ(1);
  @$pb.TagNumber(2)
  set agenda($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgenda() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgenda() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get defaultPassword => $_getBF(2);
  @$pb.TagNumber(3)
  set defaultPassword($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDefaultPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get duration => $_getIZ(3);
  @$pb.TagNumber(4)
  set duration($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearDuration() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get password => $_getSZ(4);
  @$pb.TagNumber(5)
  set password($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPassword() => $_has(4);
  @$pb.TagNumber(5)
  void clearPassword() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get preSchedule => $_getBF(5);
  @$pb.TagNumber(6)
  set preSchedule($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPreSchedule() => $_has(5);
  @$pb.TagNumber(6)
  void clearPreSchedule() => clearField(6);

  @$pb.TagNumber(7)
  Recurrence get recurrence => $_getN(6);
  @$pb.TagNumber(7)
  set recurrence(Recurrence v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRecurrence() => $_has(6);
  @$pb.TagNumber(7)
  void clearRecurrence() => clearField(7);
  @$pb.TagNumber(7)
  Recurrence ensureRecurrence() => $_ensure(6);

  @$pb.TagNumber(8)
  Settings get settings => $_getN(7);
  @$pb.TagNumber(8)
  set settings(Settings v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSettings() => $_has(7);
  @$pb.TagNumber(8)
  void clearSettings() => clearField(8);
  @$pb.TagNumber(8)
  Settings ensureSettings() => $_ensure(7);

  @$pb.TagNumber(9)
  $6.Timestamp get startTime => $_getN(8);
  @$pb.TagNumber(9)
  set startTime($6.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStartTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearStartTime() => clearField(9);
  @$pb.TagNumber(9)
  $6.Timestamp ensureStartTime() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get topic => $_getSZ(9);
  @$pb.TagNumber(10)
  set topic($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTopic() => $_has(9);
  @$pb.TagNumber(10)
  void clearTopic() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get type => $_getIZ(10);
  @$pb.TagNumber(11)
  set type($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasType() => $_has(10);
  @$pb.TagNumber(11)
  void clearType() => clearField(11);

  @$pb.TagNumber(12)
  Consultant get host => $_getN(11);
  @$pb.TagNumber(12)
  set host(Consultant v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasHost() => $_has(11);
  @$pb.TagNumber(12)
  void clearHost() => clearField(12);
  @$pb.TagNumber(12)
  Consultant ensureHost() => $_ensure(11);
}

class Recurrence extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Recurrence', createEmptyInstance: create)
    ..aOM<$6.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDateTime', subBuilder: $6.Timestamp.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTimes', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'monthlyDay', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'monthlyWeek', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'monthlyWeekDay', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeatInterval', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OU3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weeklyDays')
    ..hasRequiredFields = false
  ;

  Recurrence._() : super();
  factory Recurrence({
    $6.Timestamp? endDateTime,
    $core.int? endTimes,
    $core.int? monthlyDay,
    $core.int? monthlyWeek,
    $core.int? monthlyWeekDay,
    $core.int? repeatInterval,
    $core.int? type,
    $core.String? weeklyDays,
  }) {
    final _result = create();
    if (endDateTime != null) {
      _result.endDateTime = endDateTime;
    }
    if (endTimes != null) {
      _result.endTimes = endTimes;
    }
    if (monthlyDay != null) {
      _result.monthlyDay = monthlyDay;
    }
    if (monthlyWeek != null) {
      _result.monthlyWeek = monthlyWeek;
    }
    if (monthlyWeekDay != null) {
      _result.monthlyWeekDay = monthlyWeekDay;
    }
    if (repeatInterval != null) {
      _result.repeatInterval = repeatInterval;
    }
    if (type != null) {
      _result.type = type;
    }
    if (weeklyDays != null) {
      _result.weeklyDays = weeklyDays;
    }
    return _result;
  }
  factory Recurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Recurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Recurrence clone() => Recurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Recurrence copyWith(void Function(Recurrence) updates) => super.copyWith((message) => updates(message as Recurrence)) as Recurrence; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Recurrence create() => Recurrence._();
  Recurrence createEmptyInstance() => create();
  static $pb.PbList<Recurrence> createRepeated() => $pb.PbList<Recurrence>();
  @$core.pragma('dart2js:noInline')
  static Recurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Recurrence>(create);
  static Recurrence? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Timestamp get endDateTime => $_getN(0);
  @$pb.TagNumber(1)
  set endDateTime($6.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEndDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearEndDateTime() => clearField(1);
  @$pb.TagNumber(1)
  $6.Timestamp ensureEndDateTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get endTimes => $_getIZ(1);
  @$pb.TagNumber(2)
  set endTimes($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTimes() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTimes() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get monthlyDay => $_getIZ(2);
  @$pb.TagNumber(3)
  set monthlyDay($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMonthlyDay() => $_has(2);
  @$pb.TagNumber(3)
  void clearMonthlyDay() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get monthlyWeek => $_getIZ(3);
  @$pb.TagNumber(4)
  set monthlyWeek($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMonthlyWeek() => $_has(3);
  @$pb.TagNumber(4)
  void clearMonthlyWeek() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get monthlyWeekDay => $_getIZ(4);
  @$pb.TagNumber(5)
  set monthlyWeekDay($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMonthlyWeekDay() => $_has(4);
  @$pb.TagNumber(5)
  void clearMonthlyWeekDay() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get repeatInterval => $_getIZ(5);
  @$pb.TagNumber(6)
  set repeatInterval($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRepeatInterval() => $_has(5);
  @$pb.TagNumber(6)
  void clearRepeatInterval() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get type => $_getIZ(6);
  @$pb.TagNumber(7)
  set type($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get weeklyDays => $_getSZ(7);
  @$pb.TagNumber(8)
  set weeklyDays($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasWeeklyDays() => $_has(7);
  @$pb.TagNumber(8)
  void clearWeeklyDays() => clearField(8);
}

class Settings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Settings', createEmptyInstance: create)
    ..aOM<additional_data_center_regions>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'additionalDataCenterRegions', subBuilder: additional_data_center_regions.create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalType', $pb.PbFieldType.OU3)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoRecording')
    ..hasRequiredFields = false
  ;

  Settings._() : super();
  factory Settings({
    additional_data_center_regions? additionalDataCenterRegions,
    $core.int? approvalType,
    $core.String? autoRecording,
  }) {
    final _result = create();
    if (additionalDataCenterRegions != null) {
      _result.additionalDataCenterRegions = additionalDataCenterRegions;
    }
    if (approvalType != null) {
      _result.approvalType = approvalType;
    }
    if (autoRecording != null) {
      _result.autoRecording = autoRecording;
    }
    return _result;
  }
  factory Settings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Settings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Settings clone() => Settings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Settings copyWith(void Function(Settings) updates) => super.copyWith((message) => updates(message as Settings)) as Settings; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Settings create() => Settings._();
  Settings createEmptyInstance() => create();
  static $pb.PbList<Settings> createRepeated() => $pb.PbList<Settings>();
  @$core.pragma('dart2js:noInline')
  static Settings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Settings>(create);
  static Settings? _defaultInstance;

  @$pb.TagNumber(1)
  additional_data_center_regions get additionalDataCenterRegions => $_getN(0);
  @$pb.TagNumber(1)
  set additionalDataCenterRegions(additional_data_center_regions v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdditionalDataCenterRegions() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdditionalDataCenterRegions() => clearField(1);
  @$pb.TagNumber(1)
  additional_data_center_regions ensureAdditionalDataCenterRegions() => $_ensure(0);

  @$pb.TagNumber(5)
  $core.int get approvalType => $_getIZ(1);
  @$pb.TagNumber(5)
  set approvalType($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(5)
  $core.bool hasApprovalType() => $_has(1);
  @$pb.TagNumber(5)
  void clearApprovalType() => clearField(5);

  @$pb.TagNumber(11)
  $core.String get autoRecording => $_getSZ(2);
  @$pb.TagNumber(11)
  set autoRecording($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(11)
  $core.bool hasAutoRecording() => $_has(2);
  @$pb.TagNumber(11)
  void clearAutoRecording() => clearField(11);
}

class additional_data_center_regions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'additional_data_center_regions', createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list')
    ..hasRequiredFields = false
  ;

  additional_data_center_regions._() : super();
  factory additional_data_center_regions({
    $core.Iterable<$core.String>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory additional_data_center_regions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory additional_data_center_regions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  additional_data_center_regions clone() => additional_data_center_regions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  additional_data_center_regions copyWith(void Function(additional_data_center_regions) updates) => super.copyWith((message) => updates(message as additional_data_center_regions)) as additional_data_center_regions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static additional_data_center_regions create() => additional_data_center_regions._();
  additional_data_center_regions createEmptyInstance() => create();
  static $pb.PbList<additional_data_center_regions> createRepeated() => $pb.PbList<additional_data_center_regions>();
  @$core.pragma('dart2js:noInline')
  static additional_data_center_regions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<additional_data_center_regions>(create);
  static additional_data_center_regions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get list => $_getList(0);
}

class Consultant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Consultant', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullname')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  Consultant._() : super();
  factory Consultant({
    $core.String? userId,
    $core.String? imageUrl,
    $core.String? fullname,
    $core.String? description,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (fullname != null) {
      _result.fullname = fullname;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory Consultant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Consultant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Consultant clone() => Consultant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Consultant copyWith(void Function(Consultant) updates) => super.copyWith((message) => updates(message as Consultant)) as Consultant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Consultant create() => Consultant._();
  Consultant createEmptyInstance() => create();
  static $pb.PbList<Consultant> createRepeated() => $pb.PbList<Consultant>();
  @$core.pragma('dart2js:noInline')
  static Consultant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Consultant>(create);
  static Consultant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get imageUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set imageUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImageUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fullname => $_getSZ(2);
  @$pb.TagNumber(3)
  set fullname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFullname() => $_has(2);
  @$pb.TagNumber(3)
  void clearFullname() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);
}

class MeetingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MeetingRequest', createEmptyInstance: create)
    ..aOM<Meeting>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meeting', subBuilder: Meeting.create)
    ..hasRequiredFields = false
  ;

  MeetingRequest._() : super();
  factory MeetingRequest({
    Meeting? meeting,
  }) {
    final _result = create();
    if (meeting != null) {
      _result.meeting = meeting;
    }
    return _result;
  }
  factory MeetingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MeetingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MeetingRequest clone() => MeetingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MeetingRequest copyWith(void Function(MeetingRequest) updates) => super.copyWith((message) => updates(message as MeetingRequest)) as MeetingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MeetingRequest create() => MeetingRequest._();
  MeetingRequest createEmptyInstance() => create();
  static $pb.PbList<MeetingRequest> createRepeated() => $pb.PbList<MeetingRequest>();
  @$core.pragma('dart2js:noInline')
  static MeetingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MeetingRequest>(create);
  static MeetingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Meeting get meeting => $_getN(0);
  @$pb.TagNumber(1)
  set meeting(Meeting v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMeeting() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeeting() => clearField(1);
  @$pb.TagNumber(1)
  Meeting ensureMeeting() => $_ensure(0);
}

class MeetingListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MeetingListResponse', createEmptyInstance: create)
    ..pc<Meeting>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list', $pb.PbFieldType.PM, subBuilder: Meeting.create)
    ..hasRequiredFields = false
  ;

  MeetingListResponse._() : super();
  factory MeetingListResponse({
    $core.Iterable<Meeting>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory MeetingListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MeetingListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MeetingListResponse clone() => MeetingListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MeetingListResponse copyWith(void Function(MeetingListResponse) updates) => super.copyWith((message) => updates(message as MeetingListResponse)) as MeetingListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MeetingListResponse create() => MeetingListResponse._();
  MeetingListResponse createEmptyInstance() => create();
  static $pb.PbList<MeetingListResponse> createRepeated() => $pb.PbList<MeetingListResponse>();
  @$core.pragma('dart2js:noInline')
  static MeetingListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MeetingListResponse>(create);
  static MeetingListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Meeting> get list => $_getList(0);
}

class TestResultRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestResultRequest', createEmptyInstance: create)
    ..aOM<$0.user_metadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userMetadata', subBuilder: $0.user_metadata.create)
    ..hasRequiredFields = false
  ;

  TestResultRequest._() : super();
  factory TestResultRequest({
    $0.user_metadata? userMetadata,
  }) {
    final _result = create();
    if (userMetadata != null) {
      _result.userMetadata = userMetadata;
    }
    return _result;
  }
  factory TestResultRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestResultRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestResultRequest clone() => TestResultRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestResultRequest copyWith(void Function(TestResultRequest) updates) => super.copyWith((message) => updates(message as TestResultRequest)) as TestResultRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestResultRequest create() => TestResultRequest._();
  TestResultRequest createEmptyInstance() => create();
  static $pb.PbList<TestResultRequest> createRepeated() => $pb.PbList<TestResultRequest>();
  @$core.pragma('dart2js:noInline')
  static TestResultRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestResultRequest>(create);
  static TestResultRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.user_metadata get userMetadata => $_getN(0);
  @$pb.TagNumber(1)
  set userMetadata($0.user_metadata v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.user_metadata ensureUserMetadata() => $_ensure(0);
}

