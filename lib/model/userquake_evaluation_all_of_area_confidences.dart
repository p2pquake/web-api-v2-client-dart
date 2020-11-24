//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserquakeEvaluationAllOfAreaConfidences {
  /// Returns a new [UserquakeEvaluationAllOfAreaConfidences] instance.
  UserquakeEvaluationAllOfAreaConfidences({
    this.confidence,
    this.count,
    this.display,
  });

  /// Returns a new [UserquakeEvaluationAllOfAreaConfidences] instance and optionally import its values from
  /// [json] if it's non-null.
  UserquakeEvaluationAllOfAreaConfidences.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      confidence = json['confidence'] == null ?
        null :
        json['confidence'].toDouble();
      count = json['count'];
      display = json['display'];
    }
  }

  /// 信頼度（0～1） P2P地震情報 Beta3 においては、 0未満: F、0.0以上0.2未満: E、0.2以上0.4未満: D、0.4以上0.6未満: C、0.6以上0.8未満: B、0.8以上: A です。 
  num confidence;

  /// 件数
  int count;

  /// P2P地震情報 Beta3 における信頼度表示
  String display;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserquakeEvaluationAllOfAreaConfidences &&
     other.confidence == confidence &&
     other.count == count &&
     other.display == display;

  @override
  int get hashCode =>
    confidence.hashCode +
    count.hashCode +
    display.hashCode;

  @override
  String toString() => 'UserquakeEvaluationAllOfAreaConfidences[confidence=$confidence, count=$count, display=$display]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (confidence != null) {
      json['confidence'] = confidence;
    }
    if (count != null) {
      json['count'] = count;
    }
    if (display != null) {
      json['display'] = display;
    }
    return json;
  }

  static List<UserquakeEvaluationAllOfAreaConfidences> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserquakeEvaluationAllOfAreaConfidences>[]
      : json.map((v) => UserquakeEvaluationAllOfAreaConfidences.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserquakeEvaluationAllOfAreaConfidences> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserquakeEvaluationAllOfAreaConfidences>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserquakeEvaluationAllOfAreaConfidences.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserquakeEvaluationAllOfAreaConfidences-objects as value to a dart map
  static Map<String, List<UserquakeEvaluationAllOfAreaConfidences>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserquakeEvaluationAllOfAreaConfidences>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserquakeEvaluationAllOfAreaConfidences.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

