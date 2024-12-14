//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMATsunamiAllOfIssue {
  /// Returns a new [JMATsunamiAllOfIssue] instance.
  JMATsunamiAllOfIssue({
    required this.source_,
    required this.time,
    required this.type,
  });

  /// Returns a new [JMATsunamiAllOfIssue] instance and optionally import its values from
  /// [json] if it's non-null.
  JMATsunamiAllOfIssue.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      source_ = json['source'];
      time = json['time'];
      type = json['type'];
    }
  }

  /// 発表元
  String? source_;

  /// 発表日時
  String? time;

  /// 発表種類。現在は Focus (津波予報) のみです。
  String? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMATsunamiAllOfIssue &&
          other.source_ == source_ &&
          other.time == time &&
          other.type == type;

  @override
  int get hashCode => source_.hashCode + time.hashCode + type.hashCode;

  @override
  String toString() =>
      'JMATsunamiAllOfIssue[source_=$source_, time=$time, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (source_ != null) {
      json['source'] = source_;
    }
    if (time != null) {
      json['time'] = time;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }

  static List<JMATsunamiAllOfIssue>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMATsunamiAllOfIssue>[]
          : json
              .map((v) => JMATsunamiAllOfIssue.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, JMATsunamiAllOfIssue> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, JMATsunamiAllOfIssue>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = JMATsunamiAllOfIssue.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMATsunamiAllOfIssue-objects as value to a dart map
  static Map<String, List<JMATsunamiAllOfIssue>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<JMATsunamiAllOfIssue>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMATsunamiAllOfIssue.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
