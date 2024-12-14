//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMATsunamiAllOfFirstHeight {
  /// Returns a new [JMATsunamiAllOfFirstHeight] instance.
  JMATsunamiAllOfFirstHeight({
    this.arrivalTime,
    this.condition,
  });

  /// 第1波の到達予想時刻
  String? arrivalTime;

  /// 第1波の到達状況
  String? condition;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMATsunamiAllOfFirstHeight &&
          other.arrivalTime == arrivalTime &&
          other.condition == condition;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (arrivalTime == null ? 0 : arrivalTime.hashCode) +
      (condition == null ? 0 : condition.hashCode);

  @override
  String toString() => 'JMATsunamiAllOfFirstHeight[arrivalTime=$arrivalTime, condition=$condition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (arrivalTime != null) {
      json[r'arrivalTime'] = arrivalTime;
    }
    if (condition != null) {
      json[r'condition'] = condition;
    }
    return json;
  }

  /// Returns a new [JMATsunamiAllOfFirstHeight] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JMATsunamiAllOfFirstHeight? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return JMATsunamiAllOfFirstHeight(
        arrivalTime: json[r'arrivalTime'],
        condition: json[r'condition'],
      );
    }
    return null;
  }

  static List<JMATsunamiAllOfFirstHeight?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(JMATsunamiAllOfFirstHeight.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <JMATsunamiAllOfFirstHeight>[];

  static Map<String, JMATsunamiAllOfFirstHeight?> mapFromJson(dynamic json) {
    final map = <String, JMATsunamiAllOfFirstHeight?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = JMATsunamiAllOfFirstHeight.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of JMATsunamiAllOfFirstHeight-objects as value to a dart map
  static Map<String, List<JMATsunamiAllOfFirstHeight?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final Map<String, List<JMATsunamiAllOfFirstHeight?>?> map = <String, List<JMATsunamiAllOfFirstHeight>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = JMATsunamiAllOfFirstHeight.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
