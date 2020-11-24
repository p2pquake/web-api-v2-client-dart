//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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
      domesticTsunami = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.fromJson(json['domesticTsunami']);
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
  bool operator ==(Object other) => identical(this, other) || other is JMAQuakeAllOfEarthquake &&
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
  String toString() => 'JMAQuakeAllOfEarthquake[time=$time, hypocenter=$hypocenter, maxScale=$maxScale, domesticTsunami=$domesticTsunami, foreignTsunami=$foreignTsunami]';

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

  static List<JMAQuakeAllOfEarthquake> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMAQuakeAllOfEarthquake>[]
      : json.map((v) => JMAQuakeAllOfEarthquake.fromJson(v)).toList(growable: true == growable);

  static Map<String, JMAQuakeAllOfEarthquake> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMAQuakeAllOfEarthquake>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMAQuakeAllOfEarthquake.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMAQuakeAllOfEarthquake-objects as value to a dart map
  static Map<String, List<JMAQuakeAllOfEarthquake>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<JMAQuakeAllOfEarthquake>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMAQuakeAllOfEarthquake.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
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
  bool operator ==(Object other) => identical(this, other) ||
      other is JMAQuakeAllOfEarthquakeMaxScaleEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value.toString();

  String toJson() => value;

  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);
  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);
  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);
  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);
  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);
  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);
  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);
  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);
  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);
  static const numbernull_ = JMAQuakeAllOfEarthquakeMaxScaleEnum._(null);

  /// List of all possible values in this [enum][JMAQuakeAllOfEarthquakeMaxScaleEnum].
  static const values = <JMAQuakeAllOfEarthquakeMaxScaleEnum>[
    numbernull_,
    numbernull_,
    numbernull_,
    numbernull_,
    numbernull_,
    numbernull_,
    numbernull_,
    numbernull_,
    numbernull_,
    numbernull_,
  ];

  static JMAQuakeAllOfEarthquakeMaxScaleEnum fromJson(int value) =>
    JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfEarthquakeMaxScaleEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMAQuakeAllOfEarthquakeMaxScaleEnum>[]
      : json
          .map((value) => JMAQuakeAllOfEarthquakeMaxScaleEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfEarthquakeMaxScaleEnum] to int,
/// and [decode] dynamic data back to [JMAQuakeAllOfEarthquakeMaxScaleEnum].
class JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer {
  const JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer._();

  factory JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer() => _instance ??= JMAQuakeAllOfEarthquakeMaxScaleEnumTypeTransformer._();

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
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
      case null: return JMAQuakeAllOfEarthquakeMaxScaleEnum.numbernull_;
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
  bool operator ==(Object other) => identical(this, other) ||
      other is JMAQuakeAllOfEarthquakeDomesticTsunamiEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const none_ = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('None(なし)');
  static const unknown_ = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('Unknown(不明)');
  static const checking_ = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('Checking(調査中)');
  static const noneffective_ = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('NonEffective(若干の海面変動が予想されるが、被害の心配なし)');
  static const watch_ = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('Watch(津波注意報)');
  static const warning_ = JMAQuakeAllOfEarthquakeDomesticTsunamiEnum._('Warning(津波予報(種類不明))');

  /// List of all possible values in this [enum][JMAQuakeAllOfEarthquakeDomesticTsunamiEnum].
  static const values = <JMAQuakeAllOfEarthquakeDomesticTsunamiEnum>[
    none_,
    unknown_,
    checking_,
    noneffective_,
    watch_,
    warning_,
  ];

  static JMAQuakeAllOfEarthquakeDomesticTsunamiEnum fromJson(String value) =>
    JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfEarthquakeDomesticTsunamiEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMAQuakeAllOfEarthquakeDomesticTsunamiEnum>[]
      : json
          .map((value) => JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfEarthquakeDomesticTsunamiEnum] to String,
/// and [decode] dynamic data back to [JMAQuakeAllOfEarthquakeDomesticTsunamiEnum].
class JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer {
  const JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer._();

  factory JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer() => _instance ??= JMAQuakeAllOfEarthquakeDomesticTsunamiEnumTypeTransformer._();

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
      case 'None(なし)': return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.none_;
      case 'Unknown(不明)': return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.unknown_;
      case 'Checking(調査中)': return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.checking_;
      case 'NonEffective(若干の海面変動が予想されるが、被害の心配なし)': return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.noneffective_;
      case 'Watch(津波注意報)': return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.watch_;
      case 'Warning(津波予報(種類不明))': return JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.warning_;
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
  bool operator ==(Object other) => identical(this, other) ||
      other is JMAQuakeAllOfEarthquakeForeignTsunamiEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const none_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('None(なし)');
  static const unknown_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('Unknown(不明)');
  static const checking_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('Checking(調査中)');
  static const noneffectivenearby_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('NonEffectiveNearby(震源の近傍で小さな津波の可能性があるが、被害の心配なし)');
  static const warningnearby_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningNearby(震源の近傍で津波の可能性がある)');
  static const warningpacific_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningPacific(太平洋で津波の可能性がある)');
  static const warningpacificwide_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningPacificWide(太平洋の広域で津波の可能性がある)');
  static const warningindian_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningIndian(インド洋で津波の可能性がある)');
  static const warningindianwide_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('WarningIndianWide(インド洋の広域で津波の可能性がある)');
  static const potential_ = JMAQuakeAllOfEarthquakeForeignTsunamiEnum._('Potential(一般にこの規模では津波の可能性がある)');

  /// List of all possible values in this [enum][JMAQuakeAllOfEarthquakeForeignTsunamiEnum].
  static const values = <JMAQuakeAllOfEarthquakeForeignTsunamiEnum>[
    none_,
    unknown_,
    checking_,
    noneffectivenearby_,
    warningnearby_,
    warningpacific_,
    warningpacificwide_,
    warningindian_,
    warningindianwide_,
    potential_,
  ];

  static JMAQuakeAllOfEarthquakeForeignTsunamiEnum fromJson(String value) =>
    JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer().decode(value);

  static List<JMAQuakeAllOfEarthquakeForeignTsunamiEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMAQuakeAllOfEarthquakeForeignTsunamiEnum>[]
      : json
          .map((value) => JMAQuakeAllOfEarthquakeForeignTsunamiEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMAQuakeAllOfEarthquakeForeignTsunamiEnum] to String,
/// and [decode] dynamic data back to [JMAQuakeAllOfEarthquakeForeignTsunamiEnum].
class JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer {
  const JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer._();

  factory JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer() => _instance ??= JMAQuakeAllOfEarthquakeForeignTsunamiEnumTypeTransformer._();

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
      case 'None(なし)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.none_;
      case 'Unknown(不明)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.unknown_;
      case 'Checking(調査中)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.checking_;
      case 'NonEffectiveNearby(震源の近傍で小さな津波の可能性があるが、被害の心配なし)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.noneffectivenearby_;
      case 'WarningNearby(震源の近傍で津波の可能性がある)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningnearby_;
      case 'WarningPacific(太平洋で津波の可能性がある)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningpacific_;
      case 'WarningPacificWide(太平洋の広域で津波の可能性がある)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningpacificwide_;
      case 'WarningIndian(インド洋で津波の可能性がある)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningindian_;
      case 'WarningIndianWide(インド洋の広域で津波の可能性がある)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningindianwide_;
      case 'Potential(一般にこの規模では津波の可能性がある)': return JMAQuakeAllOfEarthquakeForeignTsunamiEnum.potential_;
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

