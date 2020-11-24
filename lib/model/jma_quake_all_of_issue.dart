//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JMAQuakeAllOfIssue {
  /// Returns a new [JMAQuakeAllOfIssue] instance.
  JMAQuakeAllOfIssue({
    this.source_,
    @required this.time,
    @required this.type,
    this.correct,
  });

  /// Returns a new [JMAQuakeAllOfIssue] instance and optionally import its values from
  /// [json] if it's non-null.
  JMAQuakeAllOfIssue.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      source_ = json['source'];
      time = json['time'];
      type = JMAQuakeAllOfIssueTypeEnum.fromJson(json['type']);
      correct = JMAQuakeAllOfIssueCorrectEnum.fromJson(json['correct']);
    }
  }

  /// 発表元
  String source_;

  /// 発表日時
  String time;

  /// 発表種類
  JMAQuakeAllOfIssueTypeEnum type = JMAQuakeAllOfIssueTypeEnum._();

  /// 訂正の有無
  JMAQuakeAllOfIssueCorrectEnum correct;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JMAQuakeAllOfIssue &&
     other.source_ == source_ &&
     other.time == time &&
     other.type == type &&
     other.correct == correct;

  @override
  int get hashCode =>
    source_.hashCode +
    time.hashCode +
    type.hashCode +
    correct.hashCode;

  @override
  String toString() => 'JMAQuakeAllOfIssue[source_=$source_, time=$time, type=$type, correct=$correct]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (source_ != null) {
      json['source'] = source_;
    }
    if (time != null) {
      json['time'] = time;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (correct != null) {
      json['correct'] = correct;
    }
    return json;
  }

  static List<JMAQuakeAllOfIssue> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMAQuakeAllOfIssue>[]
      : json.map((v) => JMAQuakeAllOfIssue.fromJson(v)).toList(growable: true == growable);

  static Map<String, JMAQuakeAllOfIssue> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMAQuakeAllOfIssue>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMAQuakeAllOfIssue.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMAQuakeAllOfIssue-objects as value to a dart map
  static Map<String, List<JMAQuakeAllOfIssue>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<JMAQuakeAllOfIssue>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMAQuakeAllOfIssue.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// 発表種類
class JMAQuakeAllOfIssueTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const JMAQuakeAllOfIssueTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is JMAQuakeAllOfIssueTypeEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const scaleprompt_ = JMAQuakeAllOfIssueTypeEnum._('ScalePrompt(震度速報)');
  static const destination_ = JMAQuakeAllOfIssueTypeEnum._('Destination(震源に関する情報)');
  static const scaleanddestination_ = JMAQuakeAllOfIssueTypeEnum._('ScaleAndDestination(震度・震源に関する情報)');
  static const detailscale_ = JMAQuakeAllOfIssueTypeEnum._('DetailScale(各地の震度に関する情報)');
  static const foreign_ = JMAQuakeAllOfIssueTypeEnum._('Foreign(遠地地震に関する情報)');
  static const other_ = JMAQuakeAllOfIssueTypeEnum._('Other(その他の情報)');

  /// List of all possible values in this [enum][JMAQuakeAllOfIssueTypeEnum].
  static const values = <JMAQuakeAllOfIssueTypeEnum>[
    scaleprompt_,
    destination_,
    scaleanddestination_,
    detailscale_,
    foreign_,
    other_,
  ];

  static JMAQuakeAllOfIssueTypeEnum fromJson(String value) =>
    JMAQuakeAllOfIssueTypeEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfIssueTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMAQuakeAllOfIssueTypeEnum>[]
      : json
          .map((value) => JMAQuakeAllOfIssueTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfIssueTypeEnum] to String,
/// and [decode] dynamic data back to [JMAQuakeAllOfIssueTypeEnum].
class JMAQuakeAllOfIssueTypeEnumTypeTransformer {
  const JMAQuakeAllOfIssueTypeEnumTypeTransformer._();

  factory JMAQuakeAllOfIssueTypeEnumTypeTransformer() => _instance ??= JMAQuakeAllOfIssueTypeEnumTypeTransformer._();

  String encode(JMAQuakeAllOfIssueTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMAQuakeAllOfIssueTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMAQuakeAllOfIssueTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 'ScalePrompt(震度速報)': return JMAQuakeAllOfIssueTypeEnum.scaleprompt_;
      case 'Destination(震源に関する情報)': return JMAQuakeAllOfIssueTypeEnum.destination_;
      case 'ScaleAndDestination(震度・震源に関する情報)': return JMAQuakeAllOfIssueTypeEnum.scaleanddestination_;
      case 'DetailScale(各地の震度に関する情報)': return JMAQuakeAllOfIssueTypeEnum.detailscale_;
      case 'Foreign(遠地地震に関する情報)': return JMAQuakeAllOfIssueTypeEnum.foreign_;
      case 'Other(その他の情報)': return JMAQuakeAllOfIssueTypeEnum.other_;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMAQuakeAllOfIssueTypeEnumTypeTransformer] instance.
  static JMAQuakeAllOfIssueTypeEnumTypeTransformer _instance;
}

/// 訂正の有無
class JMAQuakeAllOfIssueCorrectEnum {
  /// Instantiate a new enum with the provided [value].
  const JMAQuakeAllOfIssueCorrectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is JMAQuakeAllOfIssueCorrectEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const none_ = JMAQuakeAllOfIssueCorrectEnum._('None(なし)');
  static const unknown_ = JMAQuakeAllOfIssueCorrectEnum._('Unknown(不明)');
  static const scaleonly_ = JMAQuakeAllOfIssueCorrectEnum._('ScaleOnly(震度)');
  static const destinationonly_ = JMAQuakeAllOfIssueCorrectEnum._('DestinationOnly(震源)');
  static const scaleanddestination_ = JMAQuakeAllOfIssueCorrectEnum._('ScaleAndDestination(震度・震源)');

  /// List of all possible values in this [enum][JMAQuakeAllOfIssueCorrectEnum].
  static const values = <JMAQuakeAllOfIssueCorrectEnum>[
    none_,
    unknown_,
    scaleonly_,
    destinationonly_,
    scaleanddestination_,
  ];

  static JMAQuakeAllOfIssueCorrectEnum fromJson(String value) =>
    JMAQuakeAllOfIssueCorrectEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfIssueCorrectEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMAQuakeAllOfIssueCorrectEnum>[]
      : json
          .map((value) => JMAQuakeAllOfIssueCorrectEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfIssueCorrectEnum] to String,
/// and [decode] dynamic data back to [JMAQuakeAllOfIssueCorrectEnum].
class JMAQuakeAllOfIssueCorrectEnumTypeTransformer {
  const JMAQuakeAllOfIssueCorrectEnumTypeTransformer._();

  factory JMAQuakeAllOfIssueCorrectEnumTypeTransformer() => _instance ??= JMAQuakeAllOfIssueCorrectEnumTypeTransformer._();

  String encode(JMAQuakeAllOfIssueCorrectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMAQuakeAllOfIssueCorrectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMAQuakeAllOfIssueCorrectEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 'None(なし)': return JMAQuakeAllOfIssueCorrectEnum.none_;
      case 'Unknown(不明)': return JMAQuakeAllOfIssueCorrectEnum.unknown_;
      case 'ScaleOnly(震度)': return JMAQuakeAllOfIssueCorrectEnum.scaleonly_;
      case 'DestinationOnly(震源)': return JMAQuakeAllOfIssueCorrectEnum.destinationonly_;
      case 'ScaleAndDestination(震度・震源)': return JMAQuakeAllOfIssueCorrectEnum.scaleanddestination_;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMAQuakeAllOfIssueCorrectEnumTypeTransformer] instance.
  static JMAQuakeAllOfIssueCorrectEnumTypeTransformer _instance;
}

