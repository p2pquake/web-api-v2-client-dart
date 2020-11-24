//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMAQuake extends BasicData {
  /// Returns a new [JMAQuake] instance.
  JMAQuake({
    @required this.id,
    @required this.code,
    @required this.time,
    @required this.issue,
    @required this.earthquake,
    this.points = const [],
  });

  /// Returns a new [JMAQuake] instance and optionally import its values from
  /// [json] if it's non-null.
  JMAQuake.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      id = json['id'];
      code = json['code'];
      time = json['time'];
      issue = JMAQuakeAllOfIssue.fromJson(json['issue']);
      earthquake = JMAQuakeAllOfEarthquake.fromJson(json['earthquake']);
      points = JMAQuakeAllOfPoints.listFromJson(json['points']);
    }
  }

  /// 情報を一意に識別するID
  String id;

  /// 情報コード。常に551です。
  int code;

  /// 受信日時。形式は `2006/01/02 15:04:05.999` です。
  String time;

  JMAQuakeAllOfIssue issue;

  JMAQuakeAllOfEarthquake earthquake;

  /// 震度観測点の情報
  List<JMAQuakeAllOfPoints> points;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuake &&
          other.id == id &&
          other.code == code &&
          other.time == time &&
          other.issue == issue &&
          other.earthquake == earthquake &&
          other.points == points;

  @override
  int get hashCode =>
      id.hashCode +
      (code?.hashCode ?? 0) +
      time.hashCode +
      issue.hashCode +
      earthquake.hashCode +
      points.hashCode;

  @override
  String toString() =>
      'JMAQuake[id=$id, code=$code, time=$time, issue=$issue, earthquake=$earthquake, points=$points]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id;
    }
    if (code != null) {
      json['code'] = code;
    }
    if (time != null) {
      json['time'] = time;
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
    return json;
  }

  static List<JMAQuake> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuake>[]
          : json
              .map((v) => JMAQuake.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, JMAQuake> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMAQuake>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMAQuake.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMAQuake-objects as value to a dart map
  static Map<String, List<JMAQuake>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<JMAQuake>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMAQuake.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
