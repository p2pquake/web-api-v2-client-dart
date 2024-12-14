//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMAQuakeAllOfIssue {
  /// Returns a new [JMAQuakeAllOfIssue] instance.
  JMAQuakeAllOfIssue({
    this.source_,
    required this.time,
    required this.type,
    this.correct,
  });

  /// Returns a new [JMAQuakeAllOfIssue] instance and optionally import its values from
  /// [json] if it's non-null.
  JMAQuakeAllOfIssue.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      source_ = json['source'];
      time = json['time'];
      type = JMAQuakeAllOfIssueTypeEnum.fromJson(json['type']);
      correct = JMAQuakeAllOfIssueCorrectEnum.fromJson(json['correct']);
    }
  }

  /// 発表元
  String? source_;

  /// 発表日時
  String? time;

  /// 発表種類
  JMAQuakeAllOfIssueTypeEnum? type = JMAQuakeAllOfIssueTypeEnum.other;

  /// 訂正の有無
  JMAQuakeAllOfIssueCorrectEnum? correct;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfIssue &&
          other.source_ == source_ &&
          other.time == time &&
          other.type == type &&
          other.correct == correct;

  @override
  int get hashCode =>
      source_.hashCode + time.hashCode + type.hashCode + correct.hashCode;

  @override
  String toString() =>
      'JMAQuakeAllOfIssue[source_=$source_, time=$time, type=$type, correct=$correct]';

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

  static List<JMAQuakeAllOfIssue>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfIssue>[]
          : json
              .map((v) => JMAQuakeAllOfIssue.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, JMAQuakeAllOfIssue> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, JMAQuakeAllOfIssue>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = JMAQuakeAllOfIssue.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMAQuakeAllOfIssue-objects as value to a dart map
  static Map<String, List<JMAQuakeAllOfIssue>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<JMAQuakeAllOfIssue>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMAQuakeAllOfIssue.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfIssueTypeEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const scalePrompt = JMAQuakeAllOfIssueTypeEnum._('ScalePrompt');
  static const destination = JMAQuakeAllOfIssueTypeEnum._('Destination');
  static const scaleAndDestination =
      JMAQuakeAllOfIssueTypeEnum._('ScaleAndDestination');
  static const detailScale = JMAQuakeAllOfIssueTypeEnum._('DetailScale');
  static const foreign = JMAQuakeAllOfIssueTypeEnum._('Foreign');
  static const other = JMAQuakeAllOfIssueTypeEnum._('Other');

  /// List of all possible values in this [enum][JMAQuakeAllOfIssueTypeEnum].
  static const values = <JMAQuakeAllOfIssueTypeEnum>[
    scalePrompt,
    destination,
    scaleAndDestination,
    detailScale,
    foreign,
    other,
  ];

  static JMAQuakeAllOfIssueTypeEnum? fromJson(String? value) =>
      JMAQuakeAllOfIssueTypeEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfIssueTypeEnum?>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfIssueTypeEnum>[]
          : json
              .map((value) => JMAQuakeAllOfIssueTypeEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfIssueTypeEnum] to String,
/// and [decode] dynamic data back to [JMAQuakeAllOfIssueTypeEnum].
class JMAQuakeAllOfIssueTypeEnumTypeTransformer {
  const JMAQuakeAllOfIssueTypeEnumTypeTransformer._();

  factory JMAQuakeAllOfIssueTypeEnumTypeTransformer() =>
      _instance ??= JMAQuakeAllOfIssueTypeEnumTypeTransformer._();

  String encode(JMAQuakeAllOfIssueTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMAQuakeAllOfIssueTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMAQuakeAllOfIssueTypeEnum? decode(dynamic data, {bool? allowNull}) {
    switch (data) {
      case 'ScalePrompt':
        return JMAQuakeAllOfIssueTypeEnum.scalePrompt;
      case 'Destination':
        return JMAQuakeAllOfIssueTypeEnum.destination;
      case 'ScaleAndDestination':
        return JMAQuakeAllOfIssueTypeEnum.scaleAndDestination;
      case 'DetailScale':
        return JMAQuakeAllOfIssueTypeEnum.detailScale;
      case 'Foreign':
        return JMAQuakeAllOfIssueTypeEnum.foreign;
      case 'Other':
        return JMAQuakeAllOfIssueTypeEnum.other;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMAQuakeAllOfIssueTypeEnumTypeTransformer] instance.
  static JMAQuakeAllOfIssueTypeEnumTypeTransformer? _instance;
}

/// 訂正の有無
class JMAQuakeAllOfIssueCorrectEnum {
  /// Instantiate a new enum with the provided [value].
  const JMAQuakeAllOfIssueCorrectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfIssueCorrectEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = JMAQuakeAllOfIssueCorrectEnum._('None');
  static const unknown = JMAQuakeAllOfIssueCorrectEnum._('Unknown');
  static const scaleOnly = JMAQuakeAllOfIssueCorrectEnum._('ScaleOnly');
  static const destinationOnly =
      JMAQuakeAllOfIssueCorrectEnum._('DestinationOnly');
  static const scaleAndDestination =
      JMAQuakeAllOfIssueCorrectEnum._('ScaleAndDestination');

  /// List of all possible values in this [enum][JMAQuakeAllOfIssueCorrectEnum].
  static const values = <JMAQuakeAllOfIssueCorrectEnum>[
    none,
    unknown,
    scaleOnly,
    destinationOnly,
    scaleAndDestination,
  ];

  static JMAQuakeAllOfIssueCorrectEnum? fromJson(String? value) =>
      JMAQuakeAllOfIssueCorrectEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfIssueCorrectEnum?>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfIssueCorrectEnum>[]
          : json
              .map((value) => JMAQuakeAllOfIssueCorrectEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfIssueCorrectEnum] to String,
/// and [decode] dynamic data back to [JMAQuakeAllOfIssueCorrectEnum].
class JMAQuakeAllOfIssueCorrectEnumTypeTransformer {
  const JMAQuakeAllOfIssueCorrectEnumTypeTransformer._();

  factory JMAQuakeAllOfIssueCorrectEnumTypeTransformer() =>
      _instance ??= JMAQuakeAllOfIssueCorrectEnumTypeTransformer._();

  String encode(JMAQuakeAllOfIssueCorrectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMAQuakeAllOfIssueCorrectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMAQuakeAllOfIssueCorrectEnum? decode(dynamic data, {bool? allowNull}) {
    switch (data) {
      case 'None':
        return JMAQuakeAllOfIssueCorrectEnum.none;
      case 'Unknown':
        return JMAQuakeAllOfIssueCorrectEnum.unknown;
      case 'ScaleOnly':
        return JMAQuakeAllOfIssueCorrectEnum.scaleOnly;
      case 'DestinationOnly':
        return JMAQuakeAllOfIssueCorrectEnum.destinationOnly;
      case 'ScaleAndDestination':
        return JMAQuakeAllOfIssueCorrectEnum.scaleAndDestination;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMAQuakeAllOfIssueCorrectEnumTypeTransformer] instance.
  static JMAQuakeAllOfIssueCorrectEnumTypeTransformer? _instance;
}
