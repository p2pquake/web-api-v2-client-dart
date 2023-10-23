//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMATsunamiAllOfMaxHeight {
  /// Returns a new [JMATsunamiAllOfMaxHeight] instance.
  JMATsunamiAllOfMaxHeight({
    this.description,
    this.value,
  });

  /// 文字列表現
  String description;

  /// 数値表現。文字列表現が「巨大」「高い」の場合は設定されません。また、「０．２ｍ未満」は「0.2」となります。
  num value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMATsunamiAllOfMaxHeight && other.description == description && other.value == value;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (description == null ? 0 : description.hashCode) + (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'JMATsunamiAllOfMaxHeight[description=$description, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (description != null) {
      json[r'description'] = description;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [JMATsunamiAllOfMaxHeight] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JMATsunamiAllOfMaxHeight fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return JMATsunamiAllOfMaxHeight(
        description: json[r'description'],
        value: json[r'value'] == null ? null : num.parse(json[r'value'].toString()),
      );
    }
    return null;
  }

  static List<JMATsunamiAllOfMaxHeight> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(JMATsunamiAllOfMaxHeight.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <JMATsunamiAllOfMaxHeight>[];

  static Map<String, JMATsunamiAllOfMaxHeight> mapFromJson(dynamic json) {
    final map = <String, JMATsunamiAllOfMaxHeight>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = JMATsunamiAllOfMaxHeight.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of JMATsunamiAllOfMaxHeight-objects as value to a dart map
  static Map<String, List<JMATsunamiAllOfMaxHeight>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<JMATsunamiAllOfMaxHeight>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = JMATsunamiAllOfMaxHeight.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
