//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMATsunamiAllOf {
  /// Returns a new [JMATsunamiAllOf] instance.
  JMATsunamiAllOf({
    this.code,
    required this.cancelled,
    required this.issue,
    this.areas = const [],
  });

  /// Returns a new [JMATsunamiAllOf] instance and optionally import its values from
  /// [json] if it's non-null.
  JMATsunamiAllOf.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      code = json['code'];
      cancelled = json['cancelled'];
      issue = JMATsunamiAllOfIssue.fromJson(json['issue']);
      areas = JMATsunamiAllOfAreas.listFromJson(json['areas']);
    }
  }

  /// 情報コード。常に552です。
  Object? code;

  /// 津波予報が解除されたかどうか。trueの場合、areasは空配列です。
  bool? cancelled;

  JMATsunamiAllOfIssue? issue;

  /// 津波予報の詳細
  List<JMATsunamiAllOfAreas?>? areas;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMATsunamiAllOf &&
          other.code == code &&
          other.cancelled == cancelled &&
          other.issue == issue &&
          other.areas == areas;

  @override
  int get hashCode =>
      (code?.hashCode ?? 0) +
      cancelled.hashCode +
      issue.hashCode +
      areas.hashCode;

  @override
  String toString() =>
      'JMATsunamiAllOf[code=$code, cancelled=$cancelled, issue=$issue, areas=$areas]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json['code'] = code;
    }
    if (cancelled != null) {
      json['cancelled'] = cancelled;
    }
    if (issue != null) {
      json['issue'] = issue;
    }
    if (areas != null) {
      json['areas'] = areas;
    }
    return json;
  }

  static List<JMATsunamiAllOf>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMATsunamiAllOf>[]
          : json
              .map((v) => JMATsunamiAllOf.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, JMATsunamiAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMATsunamiAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = JMATsunamiAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMATsunamiAllOf-objects as value to a dart map
  static Map<String, List<JMATsunamiAllOf>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<JMATsunamiAllOf>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMATsunamiAllOf.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
