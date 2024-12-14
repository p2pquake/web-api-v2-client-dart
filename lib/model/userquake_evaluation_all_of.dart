//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class UserquakeEvaluationAllOf {
  /// Returns a new [UserquakeEvaluationAllOf] instance.
  UserquakeEvaluationAllOf({
    this.code,
    required this.count,
    required this.confidence,
    this.startedAt,
    this.updatedAt,
    this.time,
    this.areaConfidences = const {},
  });

  /// Returns a new [UserquakeEvaluationAllOf] instance and optionally import its values from
  /// [json] if it's non-null.
  UserquakeEvaluationAllOf.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      code = json['code'];
      count = json['count'];
      confidence =
          json['confidence'] == null ? null : json['confidence'].toDouble();
      startedAt = json['started_at'];
      updatedAt = json['updated_at'];
      time = json['time'];
      areaConfidences = json['area_confidences'] == null
          ? null
          : UserquakeEvaluationAllOfAreaConfidences.mapFromJson(
              json['area_confidences']);
    }
  }

  /// 情報コード。常に9611です。
  Object? code;

  /// 件数
  int? count;

  /// P2P地震情報 Beta3 における信頼度（0～1）   0: 非表示、0.97015: レベル1、0.96774: レベル2、0.97024: レベル3、0.98052: レベル4。   値は適合率 (precision) です。
  num? confidence;

  /// 開始日時。地震感知情報のイベントを一意に識別するキーとなります。 形式は `2006/01/02 15:04:05.999` です。
  String? startedAt;

  /// 更新日時。形式は `2006/01/02 15:04:05.999` です。
  String? updatedAt;

  /// 評価日時。形式は `2006/01/02 15:04:05.999` です。
  String? time;

  /// 地域ごとの信頼度情報
  Map<String, UserquakeEvaluationAllOfAreaConfidences>? areaConfidences;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserquakeEvaluationAllOf &&
          other.code == code &&
          other.count == count &&
          other.confidence == confidence &&
          other.startedAt == startedAt &&
          other.updatedAt == updatedAt &&
          other.time == time &&
          other.areaConfidences == areaConfidences;

  @override
  int get hashCode =>
      (code?.hashCode ?? 0) +
      count.hashCode +
      confidence.hashCode +
      startedAt.hashCode +
      updatedAt.hashCode +
      time.hashCode +
      areaConfidences.hashCode;

  @override
  String toString() =>
      'UserquakeEvaluationAllOf[code=$code, count=$count, confidence=$confidence, startedAt=$startedAt, updatedAt=$updatedAt, time=$time, areaConfidences=$areaConfidences]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json['code'] = code;
    }
    if (count != null) {
      json['count'] = count;
    }
    if (confidence != null) {
      json['confidence'] = confidence;
    }
    if (startedAt != null) {
      json['started_at'] = startedAt;
    }
    if (updatedAt != null) {
      json['updated_at'] = updatedAt;
    }
    if (time != null) {
      json['time'] = time;
    }
    if (areaConfidences != null) {
      json['area_confidences'] = areaConfidences;
    }
    return json;
  }

  static List<UserquakeEvaluationAllOf>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <UserquakeEvaluationAllOf>[]
          : json
              .map((v) => UserquakeEvaluationAllOf.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, UserquakeEvaluationAllOf> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, UserquakeEvaluationAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = UserquakeEvaluationAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserquakeEvaluationAllOf-objects as value to a dart map
  static Map<String, List<UserquakeEvaluationAllOf>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<UserquakeEvaluationAllOf>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserquakeEvaluationAllOf.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
