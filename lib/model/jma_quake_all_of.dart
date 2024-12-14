//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMAQuakeAllOf {
  /// Returns a new [JMAQuakeAllOf] instance.
  JMAQuakeAllOf({
    this.code,
    required this.issue,
    required this.earthquake,
    this.points = const [],
  });

  /// Returns a new [JMAQuakeAllOf] instance and optionally import its values from
  /// [json] if it's non-null.
  JMAQuakeAllOf.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      code = json['code'];
      issue = JMAQuakeAllOfIssue.fromJson(json['issue']);
      earthquake = JMAQuakeAllOfEarthquake.fromJson(json['earthquake']);
      points = JMAQuakeAllOfPoints.listFromJson(json['points']);
      comments = JMAQuakeAllOfComments.fromJson(json['comments']);
    }
  }

  /// 情報コード。常に551です。
  Object? code;

  JMAQuakeAllOfIssue? issue;

  JMAQuakeAllOfEarthquake? earthquake;

  /// 震度観測点の情報
  List<JMAQuakeAllOfPoints>? points;

  JMAQuakeAllOfComments? comments;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOf &&
          other.code == code &&
          other.issue == issue &&
          other.earthquake == earthquake &&
          other.points == points &&
          other.comments == comments;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (code == null ? 0 : code.hashCode) +
      (issue == null ? 0 : issue.hashCode) +
      (earthquake == null ? 0 : earthquake.hashCode) +
      (points == null ? 0 : points.hashCode) +
      (comments == null ? 0 : comments.hashCode);

  @override
  String toString() =>
      'JMAQuakeAllOf[code=$code, issue=$issue, earthquake=$earthquake, points=$points, comments=$comments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json['code'] = code;
    }
    if (issue != null) {
      json['issue'] = issue;
    }
    if (earthquake != null) {
      json['earthquake'] = earthquake;
    }
    if (points != null) {
      json['points'] = points;
    }
    if (comments != null) {
      json['comments'] = comments;
    }
    return json;
  }

  static List<JMAQuakeAllOf>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOf>[]
          : json.map((v) => JMAQuakeAllOf.fromJson(v)).toList(growable: true == growable);

  static Map<String, JMAQuakeAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMAQuakeAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMAQuakeAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMAQuakeAllOf-objects as value to a dart map
  static Map<String, List<JMAQuakeAllOf>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<JMAQuakeAllOf>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMAQuakeAllOf.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
