//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class EEWDetectionAllOf {
  /// Returns a new [EEWDetectionAllOf] instance.
  EEWDetectionAllOf({
    this.code,
    required this.type,
  });

  /// Returns a new [EEWDetectionAllOf] instance and optionally import its values from
  /// [json] if it's non-null.
  EEWDetectionAllOf.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      code = json['code'];
      type = EEWDetectionAllOfTypeEnum.fromJson(json['type']);
    }
  }

  /// 情報コード。常に554です。
  int? code;

  /// 検出種類
  EEWDetectionAllOfTypeEnum? type = EEWDetectionAllOfTypeEnum.full;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EEWDetectionAllOf && other.code == code && other.type == type;

  @override
  int get hashCode => (code?.hashCode ?? 0) + type.hashCode;

  @override
  String toString() => 'EEWDetectionAllOf[code=$code, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json['code'] = code;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }

  static List<EEWDetectionAllOf>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWDetectionAllOf>[]
          : json
              .map((v) => EEWDetectionAllOf.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, EEWDetectionAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EEWDetectionAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = EEWDetectionAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EEWDetectionAllOf-objects as value to a dart map
  static Map<String, List<EEWDetectionAllOf>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<EEWDetectionAllOf>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EEWDetectionAllOf.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// 検出種類
class EEWDetectionAllOfTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EEWDetectionAllOfTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EEWDetectionAllOfTypeEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const full = EEWDetectionAllOfTypeEnum._('Full');
  static const chime = EEWDetectionAllOfTypeEnum._('Chime');

  /// List of all possible values in this [enum][EEWDetectionAllOfTypeEnum].
  static const values = <EEWDetectionAllOfTypeEnum>[
    full,
    chime,
  ];

  static EEWDetectionAllOfTypeEnum? fromJson(String? value) =>
      EEWDetectionAllOfTypeEnumTypeTransformer().decode(value);

  static List<EEWDetectionAllOfTypeEnum?>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWDetectionAllOfTypeEnum>[]
          : json
              .map((value) => EEWDetectionAllOfTypeEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [EEWDetectionAllOfTypeEnum] to String,
/// and [decode] dynamic data back to [EEWDetectionAllOfTypeEnum].
class EEWDetectionAllOfTypeEnumTypeTransformer {
  const EEWDetectionAllOfTypeEnumTypeTransformer._();

  factory EEWDetectionAllOfTypeEnumTypeTransformer() =>
      _instance ??= EEWDetectionAllOfTypeEnumTypeTransformer._();

  String encode(EEWDetectionAllOfTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EEWDetectionAllOfTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EEWDetectionAllOfTypeEnum? decode(dynamic data, {bool? allowNull}) {
    switch (data) {
      case 'Full':
        return EEWDetectionAllOfTypeEnum.full;
      case 'Chime':
        return EEWDetectionAllOfTypeEnum.chime;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [EEWDetectionAllOfTypeEnumTypeTransformer] instance.
  static EEWDetectionAllOfTypeEnumTypeTransformer? _instance;
}
