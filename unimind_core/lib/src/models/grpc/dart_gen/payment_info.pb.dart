///
//  Generated code. Do not modify.
//  source: payment_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PaymentInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentInfo', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meetingId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentType', $pb.PbFieldType.OU3, protoName: 'paymentType')
    ..m<$core.String, $core.String>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', entryClassName: 'PaymentInfo.MetadataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  PaymentInfo._() : super();
  factory PaymentInfo({
    $core.String? id,
    $core.String? userId,
    $core.String? meetingId,
    $core.int? paymentType,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (meetingId != null) {
      _result.meetingId = meetingId;
    }
    if (paymentType != null) {
      _result.paymentType = paymentType;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory PaymentInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentInfo clone() => PaymentInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentInfo copyWith(void Function(PaymentInfo) updates) => super.copyWith((message) => updates(message as PaymentInfo)) as PaymentInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentInfo create() => PaymentInfo._();
  PaymentInfo createEmptyInstance() => create();
  static $pb.PbList<PaymentInfo> createRepeated() => $pb.PbList<PaymentInfo>();
  @$core.pragma('dart2js:noInline')
  static PaymentInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentInfo>(create);
  static PaymentInfo? _defaultInstance;

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
  $core.String get meetingId => $_getSZ(2);
  @$pb.TagNumber(3)
  set meetingId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMeetingId() => $_has(2);
  @$pb.TagNumber(3)
  void clearMeetingId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get paymentType => $_getIZ(3);
  @$pb.TagNumber(4)
  set paymentType($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaymentType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaymentType() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(4);
}

class PaymentInfoList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentInfoList', createEmptyInstance: create)
    ..pc<PaymentInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list', $pb.PbFieldType.PM, subBuilder: PaymentInfo.create)
    ..hasRequiredFields = false
  ;

  PaymentInfoList._() : super();
  factory PaymentInfoList({
    $core.Iterable<PaymentInfo>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory PaymentInfoList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentInfoList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentInfoList clone() => PaymentInfoList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentInfoList copyWith(void Function(PaymentInfoList) updates) => super.copyWith((message) => updates(message as PaymentInfoList)) as PaymentInfoList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentInfoList create() => PaymentInfoList._();
  PaymentInfoList createEmptyInstance() => create();
  static $pb.PbList<PaymentInfoList> createRepeated() => $pb.PbList<PaymentInfoList>();
  @$core.pragma('dart2js:noInline')
  static PaymentInfoList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentInfoList>(create);
  static PaymentInfoList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PaymentInfo> get list => $_getList(0);
}

class PaymentInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentInfoRequest', createEmptyInstance: create)
    ..aOM<PaymentInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentInfo', subBuilder: PaymentInfo.create)
    ..hasRequiredFields = false
  ;

  PaymentInfoRequest._() : super();
  factory PaymentInfoRequest({
    PaymentInfo? paymentInfo,
  }) {
    final _result = create();
    if (paymentInfo != null) {
      _result.paymentInfo = paymentInfo;
    }
    return _result;
  }
  factory PaymentInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentInfoRequest clone() => PaymentInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentInfoRequest copyWith(void Function(PaymentInfoRequest) updates) => super.copyWith((message) => updates(message as PaymentInfoRequest)) as PaymentInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentInfoRequest create() => PaymentInfoRequest._();
  PaymentInfoRequest createEmptyInstance() => create();
  static $pb.PbList<PaymentInfoRequest> createRepeated() => $pb.PbList<PaymentInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static PaymentInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentInfoRequest>(create);
  static PaymentInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PaymentInfo get paymentInfo => $_getN(0);
  @$pb.TagNumber(1)
  set paymentInfo(PaymentInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentInfo() => clearField(1);
  @$pb.TagNumber(1)
  PaymentInfo ensurePaymentInfo() => $_ensure(0);
}

