//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMATsunamiAllOfAreas {
  /// Returns a new [JMATsunamiAllOfAreas] instance.
  JMATsunamiAllOfAreas({
    this.grade,
    this.immediate,
    this.name,
    this.firstHeight,
    this.maxHeight,
  });

  /// 津波予報の種類
  JMATsunamiAllOfAreasGradeEnum? grade;

  /// 直ちに津波が来襲すると予想されているかどうか
  bool? immediate;

  /// 津波予報区名。[気象庁｜津波予報区について](http://www.data.jma.go.jp/svd/eqev/data/joho/t-yohokuinfo.html)を参照。
  String? name;

  JMATsunamiAllOfFirstHeight? firstHeight;

  JMATsunamiAllOfMaxHeight? maxHeight;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMATsunamiAllOfAreas &&
          other.grade == grade &&
          other.immediate == immediate &&
          other.name == name &&
          other.firstHeight == firstHeight &&
          other.maxHeight == maxHeight;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (grade == null ? 0 : grade.hashCode) +
      (immediate == null ? 0 : immediate.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (firstHeight == null ? 0 : firstHeight.hashCode) +
      (maxHeight == null ? 0 : maxHeight.hashCode);

  @override
  String toString() =>
      'JMATsunamiAllOfAreas[grade=$grade, immediate=$immediate, name=$name, firstHeight=$firstHeight, maxHeight=$maxHeight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (grade != null) {
      json[r'grade'] = grade;
    }
    if (immediate != null) {
      json[r'immediate'] = immediate;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (firstHeight != null) {
      json[r'firstHeight'] = firstHeight;
    }
    if (maxHeight != null) {
      json[r'maxHeight'] = maxHeight;
    }
    return json;
  }

  /// Returns a new [JMATsunamiAllOfAreas] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JMATsunamiAllOfAreas? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return JMATsunamiAllOfAreas(
        grade: JMATsunamiAllOfAreasGradeEnum.fromJson(json[r'grade']),
        immediate: json[r'immediate'],
        name: json[r'name'],
        firstHeight: JMATsunamiAllOfFirstHeight.fromJson(json[r'firstHeight']),
        maxHeight: JMATsunamiAllOfMaxHeight.fromJson(json[r'maxHeight']),
      );
    }
    return null;
  }

  static List<JMATsunamiAllOfAreas?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(JMATsunamiAllOfAreas.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <JMATsunamiAllOfAreas>[];

  static Map<String, JMATsunamiAllOfAreas?> mapFromJson(dynamic json) {
    final map = <String, JMATsunamiAllOfAreas?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = JMATsunamiAllOfAreas.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of JMATsunamiAllOfAreas-objects as value to a dart map
  static Map<String, List<JMATsunamiAllOfAreas?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final Map<String, List<JMATsunamiAllOfAreas?>?> map = <String, List<JMATsunamiAllOfAreas>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = JMATsunamiAllOfAreas.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMATsunamiAllOfAreasGradeEnum && other.value == value ||
      other is String && other == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const majorWarning = JMATsunamiAllOfAreasGradeEnum._('MajorWarning');
  static const warning = JMATsunamiAllOfAreasGradeEnum._('Warning');
  static const watch = JMATsunamiAllOfAreasGradeEnum._('Watch');
  static const unknown = JMATsunamiAllOfAreasGradeEnum._('Unknown');

  /// List of all possible values in this [enum][JMATsunamiAllOfAreasGradeEnum].
  static const values = <JMATsunamiAllOfAreasGradeEnum>[
    majorWarning,
    warning,
    watch,
    unknown,
  ];

  static JMATsunamiAllOfAreasGradeEnum? fromJson(String? value) =>
      JMATsunamiAllOfAreasGradeEnumTypeTransformer().decode(value);

  static List<JMATsunamiAllOfAreasGradeEnum?>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMATsunamiAllOfAreasGradeEnum>[]
          : json
              .map((value) => JMATsunamiAllOfAreasGradeEnum.fromJson(value))
              .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [JMATsunamiAllOfAreasGradeEnum] to String,
/// and [decode] dynamic data back to [JMATsunamiAllOfAreasGradeEnum].
class JMATsunamiAllOfAreasGradeEnumTypeTransformer {
  const JMATsunamiAllOfAreasGradeEnumTypeTransformer._();

  factory JMATsunamiAllOfAreasGradeEnumTypeTransformer() =>
      _instance ??= JMATsunamiAllOfAreasGradeEnumTypeTransformer._();

  String encode(JMATsunamiAllOfAreasGradeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JMATsunamiAllOfAreasGradeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JMATsunamiAllOfAreasGradeEnum? decode(dynamic data, {bool? allowNull}) {
    switch (data) {
      case 'MajorWarning':
        return JMATsunamiAllOfAreasGradeEnum.majorWarning;
      case 'Warning':
        return JMATsunamiAllOfAreasGradeEnum.warning;
      case 'Watch':
        return JMATsunamiAllOfAreasGradeEnum.watch;
      case 'Unknown':
        return JMATsunamiAllOfAreasGradeEnum.unknown;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [JMATsunamiAllOfAreasGradeEnumTypeTransformer] instance.
  static JMATsunamiAllOfAreasGradeEnumTypeTransformer? _instance;
}
