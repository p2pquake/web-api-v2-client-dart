//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class EEWDetection extends BasicData {
  /// Returns a new [EEWDetection] instance.
  EEWDetection({
    @required this.id,
    @required this.code,
    @required this.time,
    @required this.type,
  });

  /// Returns a new [EEWDetection] instance and optionally import its values from
  /// [json] if it's non-null.
  EEWDetection.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      id = json['id'];
      code = json['code'];
      time = json['time'];
      type = EEWDetectionTypeEnum.fromJson(json['type']);
    }
  }

  /// 情報を一意に識別するID
  String id;

  /// 情報コード。常に554です。
  int code;

  /// 受信日時。形式は `2006/01/02 15:04:05.999` です。
  String time;

  /// 検出種類
  EEWDetectionTypeEnum type = EEWDetectionTypeEnum.full;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EEWDetection &&
          other.id == id &&
          other.code == code &&
          other.time == time &&
          other.type == type;

  @override
  int get hashCode =>
      id.hashCode + (code?.hashCode ?? 0) + time.hashCode + type.hashCode;

  @override
  String toString() =>
      'EEWDetection[id=$id, code=$code, time=$time, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id;
    }
    if (code != null) {
      json['code'] = code;
    }
    if (time != null) {
      json['time'] = time;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }

  static List<EEWDetection> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWDetection>[]
          : json
              .map((v) => EEWDetection.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, EEWDetection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EEWDetection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = EEWDetection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EEWDetection-objects as value to a dart map
  static Map<String, List<EEWDetection>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<EEWDetection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EEWDetection.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// 検出種類
class EEWDetectionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EEWDetectionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EEWDetectionTypeEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const full = EEWDetectionTypeEnum._('Full');
  static const chime = EEWDetectionTypeEnum._('Chime');

  /// List of all possible values in this [enum][EEWDetectionTypeEnum].
  static const values = <EEWDetectionTypeEnum>[
    full,
    chime,
  ];

  static EEWDetectionTypeEnum fromJson(String value) =>
      EEWDetectionTypeEnumTypeTransformer().decode(value);

  static List<EEWDetectionTypeEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWDetectionTypeEnum>[]
          : json
              .map((value) => EEWDetectionTypeEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [EEWDetectionTypeEnum] to String,
/// and [decode] dynamic data back to [EEWDetectionTypeEnum].
class EEWDetectionTypeEnumTypeTransformer {
  const EEWDetectionTypeEnumTypeTransformer._();

  factory EEWDetectionTypeEnumTypeTransformer() =>
      _instance ??= EEWDetectionTypeEnumTypeTransformer._();

  String encode(EEWDetectionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EEWDetectionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EEWDetectionTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 'Full':
        return EEWDetectionTypeEnum.full;
      case 'Chime':
        return EEWDetectionTypeEnum.chime;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [EEWDetectionTypeEnumTypeTransformer] instance.
  static EEWDetectionTypeEnumTypeTransformer _instance;
}
