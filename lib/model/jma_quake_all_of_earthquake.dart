//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMAQuakeAllOfEarthquake {
  /// Returns a new [JMAQuakeAllOfEarthquake] instance.
  JMAQuakeAllOfEarthquake({
    @required this.time,
    this.hypocenter,
    this.maxScale,
    this.domesticTsunami,
    this.foreignTsunami,
  });

  /// Returns a new [JMAQuakeAllOfEarthquake] instance and optionally import its values from
  /// [json] if it's non-null.
  JMAQuakeAllOfEarthquake.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      time = json['time'];
      hypocenter = JMAQuakeAllOfEarthquakeHypocenter.fromJson(json['hypocenter']);
      maxScale = JMAQuakeAllOfEarthquakeMaxScaleEnum.fromJson(json['maxScale']);
      domesticTsunami =
          JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.fromJson(json['domesticTsunami']);
      foreignTsunami = JMAQuakeAllOfEarthquakeForeignTsunamiEnum.fromJson(json['foreignTsunami']);
    }
  }

  /// 発生日時
  String time;

  JMAQuakeAllOfEarthquakeHypocenter hypocenter;

  /// 最大震度。震度情報が存在しない場合は-1となります。
  JMAQuakeAllOfEarthquakeMaxScaleEnum maxScale;

  /// 国内への津波の有無
  JMAQuakeAllOfEarthquakeDomesticTsunamiEnum domesticTsunami;

  /// 海外での津波の有無
  JMAQuakeAllOfEarthquakeForeignTsunamiEnum foreignTsunami;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfEarthquake &&
          other.time == time &&
          other.hypocenter == hypocenter &&
          other.maxScale == maxScale &&
          other.domesticTsunami == domesticTsunami &&
          other.foreignTsunami == foreignTsunami;

  @override
  int get hashCode =>
      time.hashCode +
      hypocenter.hashCode +
      maxScale.hashCode +
      domesticTsunami.hashCode +
      foreignTsunami.hashCode;

  @override
  String toString() =>
      'JMAQuakeAllOfEarthquake[time=$time, hypocenter=$hypocenter, maxScale=$maxScale, domesticTsunami=$domesticTsunami, foreignTsunami=$foreignTsunami]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (time != null) {
      json['time'] = time;
    }
    if (hypocenter != null) {
      json['hypocenter'] = hypocenter;
    }
    if (maxScale != null) {
      json['maxScale'] = maxScale;
    }
    if (domesticTsunami != null) {
      json['domesticTsunami'] = domesticTsunami;
    }
    if (foreignTsunami != null) {
      json['foreignTsunami'] = foreignTsunami;
    }
    return json;
  }

  static List<JMAQuakeAllOfEarthquake> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfEarthquake>[]
          : json.map((v) => JMAQuakeAllOfEarthquake.fromJson(v)).toList(growable: true == growable);

  static Map<String, JMAQuakeAllOfEarthquake> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMAQuakeAllOfEarthquake>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMAQuakeAllOfEarthquake.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMAQuakeAllOfEarthquake-objects as value to a dart map
  static Map<String, List<JMAQuakeAllOfEarthquake>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<JMAQuakeAllOfEarthquake>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] =
            JMAQuakeAllOfEarthquake.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// 最大震度。震度情報が存在しない場合は-1となります。
class JMAQuakeAllOfEarthquakeMaxScaleEnum {
  /// Instantiate a new enum with the provided [value].
  const JMAQuakeAllOfEarthquakeMaxScaleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfEarthquakeMaxScaleEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value.toString();

  String toJson() => value;

  static const scale10 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('10');
  static const scale20 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('20');
  static const scale30 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('30');
  static const scale40 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('40');
  static const scale45 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('45');
  static const scale50 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('50');
  static const scale55 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('55');
  static const scale60 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('60');
  static const scale70 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('70');
  static const scale46 = JMAQuakeAllOfEarthquakeMaxScaleEnum._('46');

  /// List of all possible values in this [enum][JMAQuakeAllOfEarthquakeMaxScaleEnum].
  static const values = <JMAQuakeAllOfEarthquakeMaxScaleEnum>[
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

  static JMAQuakeAllOfEarthquakeMaxScaleEnum fromJson(int value) =>
      JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfEarthquakeMaxScaleEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfEarthquakeMaxScaleEnum>[]
          : json
              .map((value) => JMAQuakeAllOfEarthquakeMaxScaleEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfEarthquakeMaxScaleEnum] to int,
/// and [decode] dynamic data back to [JMAQuakeAllOfEarthquakeMaxScaleEnum].
class JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer {
  const JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer._();

  factory JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer() =>
      _instance ??= JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer._();

  String encode(JMAQuakeAllOfEarthquakeMaxScaleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMAQuakeAllOfEarthquakeMaxScaleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMAQuakeAllOfEarthquakeMaxScaleEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 10:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale10;
      case 20:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale20;
      case 30:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale30;
      case 40:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale40;
      case 45:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale45;
      case 50:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale50;
      case 55:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale55;
      case 60:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale60;
      case 70:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale70;
      case 46:
        return JMAQuakeAllOfEarthquakeMaxScaleEnum.scale46;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer] instance.
  static JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer _instance;
}

/// 国内への津波の有無
class JMAQuakeAllOfEarthquakeDomesticTsunamiEnum {
  /// Instantiate a new enum with the provided [value].
  const JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfEarthquakeDomesticTsunamiEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('None');
  static const unknown = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('Unknown');
  static const checking = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('Checking');
  static const nonEffective = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('NonEffective');
  static const watch = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('Watch');
  static const warning = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('Warning');

  /// List of all possible values in this [enum][JMAQuakeAllOfEarthquakeDomesticTsunamiEnum].
  static const values = <JMAQuakeAllOfEarthquakeDomesticTsunamiEnum>[
    none,
    unknown,
    checking,
    nonEffective,
    watch,
    warning,
  ];

  static JMAQuakeAllOfEarthquakeDomesticTsunamiEnum fromJson(String value) =>
      JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfEarthquakeDomesticTsunamiEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfEarthquakeDomesticTsunamiEnum>[]
          : json
              .map((value) => JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfEarthquakeDomesticTsunamiEnum] to String,
/// and [decode] dynamic data back to [JMAQuakeAllOfEarthquakeDomesticTsunamiEnum].
class JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer {
  const JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer._();

  factory JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer() =>
      _instance ??= JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer._();

  String encode(JMAQuakeAllOfEarthquakeDomesticTsunamiEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMAQuakeAllOfEarthquakeDomesticTsunamiEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 'None':
        return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.none;
      case 'Unknown':
        return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.unknown;
      case 'Checking':
        return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.checking;
      case 'NonEffective':
        return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.nonEffective;
      case 'Watch':
        return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.watch;
      case 'Warning':
        return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.warning;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer] instance.
  static JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer _instance;
}

/// 海外での津波の有無
class JMAQuakeAllOfEarthquakeForeignTsunamiEnum {
  /// Instantiate a new enum with the provided [value].
  const JMAQuakeAllOfEarthquakeForeignTsunamiEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfEarthquakeForeignTsunamiEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('None');
  static const unknown = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('Unknown');
  static const checking = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('Checking');
  static const nonEffectiveNearby =
      JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('NonEffectiveNearby');
  static const warningNearby = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningNearby');
  static const warningPacific = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningPacific');
  static const warningPacificWide =
      JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningPacificWide');
  static const warningIndian = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningIndian');
  static const warningIndianWide = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningIndianWide');
  static const potential = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('Potential');

  /// List of all possible values in this [enum][JMAQuakeAllOfEarthquakeForeignTsunamiEnum].
  static const values = <JMAQuakeAllOfEarthquakeForeignTsunamiEnum>[
    none,
    unknown,
    checking,
    nonEffectiveNearby,
    warningNearby,
    warningPacific,
    warningPacificWide,
    warningIndian,
    warningIndianWide,
    potential,
  ];

  static JMAQuakeAllOfEarthquakeForeignTsunamiEnum fromJson(String value) =>
      JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfEarthquakeForeignTsunamiEnum> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfEarthquakeForeignTsunamiEnum>[]
          : json
              .map((value) => JMAQuakeAllOfEarthquakeForeignTsunamiEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfEarthquakeForeignTsunamiEnum] to String,
/// and [decode] dynamic data back to [JMAQuakeAllOfEarthquakeForeignTsunamiEnum].
class JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer {
  const JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer._();

  factory JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer() =>
      _instance ??= JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer._();

  String encode(JMAQuakeAllOfEarthquakeForeignTsunamiEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMAQuakeAllOfEarthquakeForeignTsunamiEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMAQuakeAllOfEarthquakeForeignTsunamiEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 'None':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.none;
      case 'Unknown':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.unknown;
      case 'Checking':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.checking;
      case 'NonEffectiveNearby':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.nonEffectiveNearby;
      case 'WarningNearby':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningNearby;
      case 'WarningPacific':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningPacific;
      case 'WarningPacificWide':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningPacificWide;
      case 'WarningIndian':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningIndian;
      case 'WarningIndianWide':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningIndianWide;
      case 'Potential':
        return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.potential;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer] instance.
  static JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer _instance;
}
