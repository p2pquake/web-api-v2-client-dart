//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JMATsunamiAllOfAreas {
  /// Returns a new [JMATsunamiAllOfAreas] instance.
  JMATsunamiAllOfAreas({
    this.grade,
    this.immediate,
    this.name,
  });

  /// Returns a new [JMATsunamiAllOfAreas] instance and optionally import its values from
  /// [json] if it's non-null.
  JMATsunamiAllOfAreas.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      grade = JMATsunamiAllOfAreasGradeEnum.fromJson(json['grade']);
      immediate = json['immediate'];
      name = json['name'];
    }
  }

  /// 津波予報の種類
  JMATsunamiAllOfAreasGradeEnum grade;

  /// 直ちに津波が来襲すると予想されているかどうか
  bool immediate;

  /// 津波予報区名。[気象庁｜津波予報区について](http://www.data.jma.go.jp/svd/eqev/data/joho/t-yohokuinfo.html)を参照。
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JMATsunamiAllOfAreas &&
     other.grade == grade &&
     other.immediate == immediate &&
     other.name == name;

  @override
  int get hashCode =>
    grade.hashCode +
    immediate.hashCode +
    name.hashCode;

  @override
  String toString() => 'JMATsunamiAllOfAreas[grade=$grade, immediate=$immediate, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (grade != null) {
      json['grade'] = grade;
    }
    if (immediate != null) {
      json['immediate'] = immediate;
    }
    if (name != null) {
      json['name'] = name;
    }
    return json;
  }

  static List<JMATsunamiAllOfAreas> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMATsunamiAllOfAreas>[]
      : json.map((v) => JMATsunamiAllOfAreas.fromJson(v)).toList(growable: true == growable);

  static Map<String, JMATsunamiAllOfAreas> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMATsunamiAllOfAreas>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMATsunamiAllOfAreas.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMATsunamiAllOfAreas-objects as value to a dart map
  static Map<String, List<JMATsunamiAllOfAreas>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<JMATsunamiAllOfAreas>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMATsunamiAllOfAreas.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// 津波予報の種類
class JMATsunamiAllOfAreasGradeEnum {
  /// Instantiate a new enum with the provided [value].
  const JMATsunamiAllOfAreasGradeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is JMATsunamiAllOfAreasGradeEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const majorwarning_ = JMATsunamiAllOfAreasGradeEnum._('MajorWarning (大津波警報)');
  static const warning_ = JMATsunamiAllOfAreasGradeEnum._('Warning (津波警報)');
  static const watch_ = JMATsunamiAllOfAreasGradeEnum._('Watch (津波注意報)');
  static const unknown_ = JMATsunamiAllOfAreasGradeEnum._('Unknown (不明)');

  /// List of all possible values in this [enum][JMATsunamiAllOfAreasGradeEnum].
  static const values = <JMATsunamiAllOfAreasGradeEnum>[
    majorwarning_,
    warning_,
    watch_,
    unknown_,
  ];

  static JMATsunamiAllOfAreasGradeEnum fromJson(String value) =>
    JMATsunamiAllOfAreasGradeEnumTypeTransformer().decode(value);

  static List<JMATsunamiAllOfAreasGradeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMATsunamiAllOfAreasGradeEnum>[]
      : json
          .map((value) => JMATsunamiAllOfAreasGradeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMATsunamiAllOfAreasGradeEnum] to String,
/// and [decode] dynamic data back to [JMATsunamiAllOfAreasGradeEnum].
class JMATsunamiAllOfAreasGradeEnumTypeTransformer {
  const JMATsunamiAllOfAreasGradeEnumTypeTransformer._();

  factory JMATsunamiAllOfAreasGradeEnumTypeTransformer() => _instance ??= JMATsunamiAllOfAreasGradeEnumTypeTransformer._();

  String encode(JMATsunamiAllOfAreasGradeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMATsunamiAllOfAreasGradeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMATsunamiAllOfAreasGradeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 'MajorWarning (大津波警報)': return JMATsunamiAllOfAreasGradeEnum.majorwarning_;
      case 'Warning (津波警報)': return JMATsunamiAllOfAreasGradeEnum.warning_;
      case 'Watch (津波注意報)': return JMATsunamiAllOfAreasGradeEnum.watch_;
      case 'Unknown (不明)': return JMATsunamiAllOfAreasGradeEnum.unknown_;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMATsunamiAllOfAreasGradeEnumTypeTransformer] instance.
  static JMATsunamiAllOfAreasGradeEnumTypeTransformer _instance;
}

