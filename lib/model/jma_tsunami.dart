//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMATsunami extends BasicData {
  /// Returns a new [JMATsunami] instance.
  JMATsunami({
    required this.id,
    required this.code,
    required this.time,
    required this.cancelled,
    required this.issue,
    this.areas = const [],
  }) : super(id: id, code: code, time: time);

  /// Returns a new [JMATsunami] instance and optionally import its values from
  /// [json] if it's non-null.
  JMATsunami.fromJson(Map<String, dynamic>? json) : super.fromJson(json) {
    if (json != null) {
      id = json['id'];
      code = json['code'];
      time = json['time'];
      cancelled = json['cancelled'];
      issue = JMATsunamiAllOfIssue.fromJson(json['issue']);
      areas = JMATsunamiAllOfAreas.listFromJson(json['areas']);
    }
  }

  /// 情報を一意に識別するID
  String? id;

  /// 情報コード。常に552です。
  int? code;

  /// 受信日時。形式は `2006/01/02 15:04:05.999` です。
  String? time;

  /// 津波予報が解除されたかどうか。trueの場合、areasは空配列です。
  bool? cancelled;

  JMATsunamiAllOfIssue? issue;

  /// 津波予報の詳細
  List<JMATsunamiAllOfAreas?>? areas;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMATsunami &&
          other.id == id &&
          other.code == code &&
          other.time == time &&
          other.cancelled == cancelled &&
          other.issue == issue &&
          other.areas == areas;

  @override
  int get hashCode =>
      id.hashCode +
      (code?.hashCode ?? 0) +
      time.hashCode +
      cancelled.hashCode +
      issue.hashCode +
      areas.hashCode;

  @override
  String toString() =>
      'JMATsunami[id=$id, code=$code, time=$time, cancelled=$cancelled, issue=$issue, areas=$areas]';

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

  static List<JMATsunami>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMATsunami>[]
          : json.map((v) => JMATsunami.fromJson(v)).toList(growable: true == growable);

  static Map<String, JMATsunami> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMATsunami>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMATsunami.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMATsunami-objects as value to a dart map
  static Map<String, List<JMATsunami>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<JMATsunami>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMATsunami.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
