//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class EEWAllOfAreas {
  /// Returns a new [EEWAllOfAreas] instance.
  EEWAllOfAreas({
    @required this.pref,
    @required this.name,
    @required this.scaleFrom,
    @required this.scaleTo,
    this.kindCode,
    this.arrivalTime,
  });

  /// 府県予報区
  String pref;

  /// 地域名（細分区域名）
  String name;

  /// 最大予測震度の下限   システムの都合で小数点が付きますが整数部のみ有効です。
  EEWAllOfAreasScaleFromEnum scaleFrom;

  /// 最大予測震度の上限   システムの都合で小数点が付きますが整数部のみ有効です。
  EEWAllOfAreasScaleToEnum scaleTo;

  /// 警報コード
  EEWAllOfAreasKindCodeEnum kindCode;

  /// 主要動の到達予測時刻
  String arrivalTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EEWAllOfAreas &&
          other.pref == pref &&
          other.name == name &&
          other.scaleFrom == scaleFrom &&
          other.scaleTo == scaleTo &&
          other.kindCode == kindCode &&
          other.arrivalTime == arrivalTime;

  @override
  int get hashCode =>
      (pref == null ? 0 : pref.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (scaleFrom == null ? 0 : scaleFrom.hashCode) +
      (scaleTo == null ? 0 : scaleTo.hashCode) +
      (kindCode == null ? 0 : kindCode.hashCode) +
      (arrivalTime == null ? 0 : arrivalTime.hashCode);

  @override
  String toString() =>
      'EEWAllOfAreas[pref=$pref, name=$name, scaleFrom=$scaleFrom, scaleTo=$scaleTo, kindCode=$kindCode, arrivalTime=$arrivalTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'pref'] = pref;
    json[r'name'] = name;
    json[r'scaleFrom'] = scaleFrom;
    json[r'scaleTo'] = scaleTo;
    if (kindCode != null) {
      json[r'kindCode'] = kindCode;
    }
    if (arrivalTime != null) {
      json[r'arrivalTime'] = arrivalTime;
    }
    return json;
  }

  /// Returns a new [EEWAllOfAreas] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EEWAllOfAreas fromJson(Map<String, dynamic> json) => json == null
      ? null
      : EEWAllOfAreas(
          pref: json[r'pref'],
          name: json[r'name'],
          scaleFrom: EEWAllOfAreasScaleFromEnum.fromJson(json[r'scaleFrom']),
          scaleTo: EEWAllOfAreasScaleToEnum.fromJson(json[r'scaleTo']),
          kindCode: EEWAllOfAreasKindCodeEnum.fromJson(json[r'kindCode']),
          arrivalTime: json[r'arrivalTime'],
        );

  static List<EEWAllOfAreas> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWAllOfAreas>[]
          : json.map((dynamic value) => EEWAllOfAreas.fromJson(value)).toList(growable: true == growable);

  static Map<String, EEWAllOfAreas> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EEWAllOfAreas>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = EEWAllOfAreas.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EEWAllOfAreas-objects as value to a dart map
  static Map<String, List<EEWAllOfAreas>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<EEWAllOfAreas>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = EEWAllOfAreas.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

/// 最大予測震度の下限   システムの都合で小数点が付きますが整数部のみ有効です。
class EEWAllOfAreasScaleFromEnum {
  /// Instantiate a new enum with the provided [value].
  const EEWAllOfAreasScaleFromEnum._(this.value);

  /// The underlying value of this enum member.
  final num value;

  @override
  String toString() => value.toString();

  num toJson() => value;

  static const scaleUnknown = EEWAllOfAreasScaleFromEnum._(-1);
  static const scale00 = EEWAllOfAreasScaleFromEnum._(0);
  static const scale10 = EEWAllOfAreasScaleFromEnum._(10);
  static const scale20 = EEWAllOfAreasScaleFromEnum._(20);
  static const scale30 = EEWAllOfAreasScaleFromEnum._(30);
  static const scale40 = EEWAllOfAreasScaleFromEnum._(40);
  static const scale45 = EEWAllOfAreasScaleFromEnum._(45);
  static const scale50 = EEWAllOfAreasScaleFromEnum._(50);
  static const scale55 = EEWAllOfAreasScaleFromEnum._(55);
  static const scale60 = EEWAllOfAreasScaleFromEnum._(60);
  static const scale70 = EEWAllOfAreasScaleFromEnum._(70);

  /// List of all possible values in this [enum][EEWAllOfAreasScaleFromEnum].
  static const values = <EEWAllOfAreasScaleFromEnum>[
    scaleUnknown,
    scale00,
    scale10,
    scale20,
    scale30,
    scale40,
    scale45,
    scale50,
    scale55,
    scale60,
    scale70,
  ];

  static EEWAllOfAreasScaleFromEnum fromJson(dynamic value) =>
      EEWAllOfAreasScaleFromEnumTypeTransformer().decode(value);

  static List<EEWAllOfAreasScaleFromEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWAllOfAreasScaleFromEnum>[]
          : json.map((value) => EEWAllOfAreasScaleFromEnum.fromJson(value)).toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [EEWAllOfAreasScaleFromEnum] to num,
/// and [decode] dynamic data back to [EEWAllOfAreasScaleFromEnum].
class EEWAllOfAreasScaleFromEnumTypeTransformer {
  const EEWAllOfAreasScaleFromEnumTypeTransformer._();

  factory EEWAllOfAreasScaleFromEnumTypeTransformer() => _instance ??= EEWAllOfAreasScaleFromEnumTypeTransformer._();

  num encode(EEWAllOfAreasScaleFromEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EEWAllOfAreasScaleFromEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EEWAllOfAreasScaleFromEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case -1:
        return EEWAllOfAreasScaleFromEnum.scaleUnknown;
      case 0:
        return EEWAllOfAreasScaleFromEnum.scale00;
      case 10:
        return EEWAllOfAreasScaleFromEnum.scale10;
      case 20:
        return EEWAllOfAreasScaleFromEnum.scale20;
      case 30:
        return EEWAllOfAreasScaleFromEnum.scale30;
      case 40:
        return EEWAllOfAreasScaleFromEnum.scale40;
      case 45:
        return EEWAllOfAreasScaleFromEnum.scale45;
      case 50:
        return EEWAllOfAreasScaleFromEnum.scale50;
      case 55:
        return EEWAllOfAreasScaleFromEnum.scale55;
      case 60:
        return EEWAllOfAreasScaleFromEnum.scale60;
      case 70:
        return EEWAllOfAreasScaleFromEnum.scale70;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [EEWAllOfAreasScaleFromEnumTypeTransformer] instance.
  static EEWAllOfAreasScaleFromEnumTypeTransformer _instance;
}

/// 最大予測震度の上限   システムの都合で小数点が付きますが整数部のみ有効です。
class EEWAllOfAreasScaleToEnum {
  /// Instantiate a new enum with the provided [value].
  const EEWAllOfAreasScaleToEnum._(this.value);

  /// The underlying value of this enum member.
  final num value;

  @override
  String toString() => value.toString();

  num toJson() => value;

  static const scaleUnknown = EEWAllOfAreasScaleToEnum._(-1);
  static const scale00 = EEWAllOfAreasScaleToEnum._(0);
  static const scale10 = EEWAllOfAreasScaleToEnum._(10);
  static const scale20 = EEWAllOfAreasScaleToEnum._(20);
  static const scale30 = EEWAllOfAreasScaleToEnum._(30);
  static const scale40 = EEWAllOfAreasScaleToEnum._(40);
  static const scale45 = EEWAllOfAreasScaleToEnum._(45);
  static const scale50 = EEWAllOfAreasScaleToEnum._(50);
  static const scale55 = EEWAllOfAreasScaleToEnum._(55);
  static const scale60 = EEWAllOfAreasScaleToEnum._(60);
  static const scale70 = EEWAllOfAreasScaleToEnum._(70);
  static const scaleOver = EEWAllOfAreasScaleToEnum._(90);

  /// List of all possible values in this [enum][EEWAllOfAreasScaleToEnum].
  static const values = <EEWAllOfAreasScaleToEnum>[
    scaleUnknown,
    scale00,
    scale10,
    scale20,
    scale30,
    scale40,
    scale45,
    scale50,
    scale55,
    scale60,
    scale70,
    scaleOver,
  ];

  static EEWAllOfAreasScaleToEnum fromJson(dynamic value) => EEWAllOfAreasScaleToEnumTypeTransformer().decode(value);

  static List<EEWAllOfAreasScaleToEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWAllOfAreasScaleToEnum>[]
          : json.map((value) => EEWAllOfAreasScaleToEnum.fromJson(value)).toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [EEWAllOfAreasScaleToEnum] to num,
/// and [decode] dynamic data back to [EEWAllOfAreasScaleToEnum].
class EEWAllOfAreasScaleToEnumTypeTransformer {
  const EEWAllOfAreasScaleToEnumTypeTransformer._();

  factory EEWAllOfAreasScaleToEnumTypeTransformer() => _instance ??= EEWAllOfAreasScaleToEnumTypeTransformer._();

  num encode(EEWAllOfAreasScaleToEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EEWAllOfAreasScaleToEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EEWAllOfAreasScaleToEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case -1:
        return EEWAllOfAreasScaleToEnum.scaleUnknown;
      case 0:
        return EEWAllOfAreasScaleToEnum.scale00;
      case 10:
        return EEWAllOfAreasScaleToEnum.scale10;
      case 20:
        return EEWAllOfAreasScaleToEnum.scale20;
      case 30:
        return EEWAllOfAreasScaleToEnum.scale30;
      case 40:
        return EEWAllOfAreasScaleToEnum.scale40;
      case 45:
        return EEWAllOfAreasScaleToEnum.scale45;
      case 50:
        return EEWAllOfAreasScaleToEnum.scale50;
      case 55:
        return EEWAllOfAreasScaleToEnum.scale55;
      case 60:
        return EEWAllOfAreasScaleToEnum.scale60;
      case 70:
        return EEWAllOfAreasScaleToEnum.scale70;
      case 99:
        return EEWAllOfAreasScaleToEnum.scaleOver;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [EEWAllOfAreasScaleToEnumTypeTransformer] instance.
  static EEWAllOfAreasScaleToEnumTypeTransformer _instance;
}

/// 警報コード
class EEWAllOfAreasKindCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const EEWAllOfAreasKindCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notReached = EEWAllOfAreasKindCodeEnum._(r'10');
  static const reached = EEWAllOfAreasKindCodeEnum._(r'11');
  static const noPrediction = EEWAllOfAreasKindCodeEnum._(r'19');

  /// List of all possible values in this [enum][EEWAllOfAreasKindCodeEnum].
  static const values = <EEWAllOfAreasKindCodeEnum>[
    notReached,
    reached,
    noPrediction,
  ];

  static EEWAllOfAreasKindCodeEnum fromJson(dynamic value) => EEWAllOfAreasKindCodeEnumTypeTransformer().decode(value);

  static List<EEWAllOfAreasKindCodeEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWAllOfAreasKindCodeEnum>[]
          : json.map((value) => EEWAllOfAreasKindCodeEnum.fromJson(value)).toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [EEWAllOfAreasKindCodeEnum] to String,
/// and [decode] dynamic data back to [EEWAllOfAreasKindCodeEnum].
class EEWAllOfAreasKindCodeEnumTypeTransformer {
  const EEWAllOfAreasKindCodeEnumTypeTransformer._();

  factory EEWAllOfAreasKindCodeEnumTypeTransformer() => _instance ??= EEWAllOfAreasKindCodeEnumTypeTransformer._();

  String encode(EEWAllOfAreasKindCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EEWAllOfAreasKindCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EEWAllOfAreasKindCodeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'10':
        return EEWAllOfAreasKindCodeEnum.notReached;
      case r'11':
        return EEWAllOfAreasKindCodeEnum.reached;
      case r'19':
        return EEWAllOfAreasKindCodeEnum.noPrediction;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [EEWAllOfAreasKindCodeEnumTypeTransformer] instance.
  static EEWAllOfAreasKindCodeEnumTypeTransformer _instance;
}
