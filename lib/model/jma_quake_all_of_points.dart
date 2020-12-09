//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMAQuakeAllOfPoints {
  /// Returns a new [JMAQuakeAllOfPoints] instance.
  JMAQuakeAllOfPoints({
    @required this.pref,
    @required this.addr,
    @required this.isArea,
    @required this.scale,
  });

  /// Returns a new [JMAQuakeAllOfPoints] instance and optionally import its values from
  /// [json] if it's non-null.
  JMAQuakeAllOfPoints.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      pref = json['pref'];
      addr = json['addr'];
      isArea = json['isArea'];
      scale = JMAQuakeAllOfPointsScaleEnum.fromJson(json['scale']);
    }
  }

  /// 都道府県
  String pref;

  /// 震度観測点名称（震度速報の場合は [気象庁 | 緊急地震速報や震度情報で用いる区域の名称](http://www.data.jma.go.jp/svd/eqev/data/joho/shindo-name.html) に記載のある区域名）
  String addr;

  /// 区域名かどうか
  bool isArea;

  /// 震度
  JMAQuakeAllOfPointsScaleEnum scale = null; // JMAQuakeAllOfPointsScaleEnum._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfPoints &&
          other.pref == pref &&
          other.addr == addr &&
          other.isArea == isArea &&
          other.scale == scale;

  @override
  int get hashCode => pref.hashCode + addr.hashCode + isArea.hashCode + scale.hashCode;

  @override
  String toString() => 'JMAQuakeAllOfPoints[pref=$pref, addr=$addr, isArea=$isArea, scale=$scale]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (pref != null) {
      json['pref'] = pref;
    }
    if (addr != null) {
      json['addr'] = addr;
    }
    if (isArea != null) {
      json['isArea'] = isArea;
    }
    if (scale != null) {
      json['scale'] = scale;
    }
    return json;
  }

  static List<JMAQuakeAllOfPoints> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfPoints>[]
          : json.map((v) => JMAQuakeAllOfPoints.fromJson(v)).toList(growable: true == growable);

  static Map<String, JMAQuakeAllOfPoints> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMAQuakeAllOfPoints>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMAQuakeAllOfPoints.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMAQuakeAllOfPoints-objects as value to a dart map
  static Map<String, List<JMAQuakeAllOfPoints>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<JMAQuakeAllOfPoints>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] =
            JMAQuakeAllOfPoints.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// 震度
class JMAQuakeAllOfPointsScaleEnum {
  /// Instantiate a new enum with the provided [value].
  const JMAQuakeAllOfPointsScaleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfPointsScaleEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value.toString();

  String toJson() => value;

  static const scale10 = JMAQuakeAllOfPointsScaleEnum._('10');
  static const scale20 = JMAQuakeAllOfPointsScaleEnum._('20');
  static const scale30 = JMAQuakeAllOfPointsScaleEnum._('30');
  static const scale40 = JMAQuakeAllOfPointsScaleEnum._('40');
  static const scale45 = JMAQuakeAllOfPointsScaleEnum._('45');
  static const scale50 = JMAQuakeAllOfPointsScaleEnum._('50');
  static const scale55 = JMAQuakeAllOfPointsScaleEnum._('55');
  static const scale60 = JMAQuakeAllOfPointsScaleEnum._('60');
  static const scale70 = JMAQuakeAllOfPointsScaleEnum._('70');
  static const scale46 = JMAQuakeAllOfPointsScaleEnum._('46');

  /// List of all possible values in this [enum][JMAQuakeAllOfPointsScaleEnum].
  static const values = <JMAQuakeAllOfPointsScaleEnum>[
    scale10,
    scale20,
    scale30,
    scale40,
    scale45,
    scale50,
    scale55,
    scale60,
    scale70,
    scale46,
  ];

  static JMAQuakeAllOfPointsScaleEnum fromJson(num value) =>
      JMAQuakeAllOfPointsScaleEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfPointsScaleEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfPointsScaleEnum>[]
          : json
              .map((value) => JMAQuakeAllOfPointsScaleEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfPointsScaleEnum] to num,
/// and [decode] dynamic data back to [JMAQuakeAllOfPointsScaleEnum].
class JMAQuakeAllOfPointsScaleEnumTypeTransformer {
  const JMAQuakeAllOfPointsScaleEnumTypeTransformer._();

  factory JMAQuakeAllOfPointsScaleEnumTypeTransformer() =>
      _instance ??= JMAQuakeAllOfPointsScaleEnumTypeTransformer._();

  String encode(JMAQuakeAllOfPointsScaleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMAQuakeAllOfPointsScaleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMAQuakeAllOfPointsScaleEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 10:
        return JMAQuakeAllOfPointsScaleEnum.scale10;
      case 20:
        return JMAQuakeAllOfPointsScaleEnum.scale20;
      case 30:
        return JMAQuakeAllOfPointsScaleEnum.scale30;
      case 40:
        return JMAQuakeAllOfPointsScaleEnum.scale40;
      case 45:
        return JMAQuakeAllOfPointsScaleEnum.scale45;
      case 50:
        return JMAQuakeAllOfPointsScaleEnum.scale50;
      case 55:
        return JMAQuakeAllOfPointsScaleEnum.scale55;
      case 60:
        return JMAQuakeAllOfPointsScaleEnum.scale60;
      case 70:
        return JMAQuakeAllOfPointsScaleEnum.scale70;
      case 46:
        return JMAQuakeAllOfPointsScaleEnum.scale46;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMAQuakeAllOfPointsScaleEnumTypeTransformer] instance.
  static JMAQuakeAllOfPointsScaleEnumTypeTransformer _instance;
}
