//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserquakeEvaluation {
  /// Returns a new [UserquakeEvaluation] instance.
  UserquakeEvaluation({
    @required this.id,
    @required this.code,
    @required this.time,
    @required this.count,
    @required this.confidence,
    this.startedAt,
    this.updatedAt,
    this.areaConfidences = const {},
  });

  /// Returns a new [UserquakeEvaluation] instance and optionally import its values from
  /// [json] if it's non-null.
  UserquakeEvaluation.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      id = json['id'];
      code = json['code'];
      time = json['time'];
      count = json['count'];
      confidence = json['confidence'] == null ?
        null :
        json['confidence'].toDouble();
      startedAt = json['started_at'];
      updatedAt = json['updated_at'];
      areaConfidences = json['area_confidences'] == null
        ? null
        : UserquakeEvaluationAllOfAreaConfidences.mapFromJson(json['area_confidences']);
    }
  }

  /// 情報を一意に識別するID
  String id;

  /// 情報コード。常に9611です。
  Object code;

  /// 評価日時。形式は `2006/01/02 15:04:05.999` です。
  String time;

  /// 件数
  int count;

  /// P2P地震情報 Beta3 における信頼度（0～1）   0: 非表示、0.97015: レベル1、0.96774: レベル2、0.97024: レベル3、0.98052: レベル4。   値は適合率 (precision) です。 
  num confidence;

  /// 開始日時。地震感知情報のイベントを一意に識別するキーとなります。 形式は `2006/01/02 15:04:05.999` です。 
  String startedAt;

  /// 更新日時。形式は `2006/01/02 15:04:05.999` です。
  String updatedAt;

  /// 地域ごとの信頼度情報
  Map<String, UserquakeEvaluationAllOfAreaConfidences> areaConfidences;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserquakeEvaluation &&
     other.id == id &&
     other.code == code &&
     other.time == time &&
     other.count == count &&
     other.confidence == confidence &&
     other.startedAt == startedAt &&
     other.updatedAt == updatedAt &&
     other.areaConfidences == areaConfidences;

  @override
  int get hashCode =>
    id.hashCode +
    (code?.hashCode ?? 0) +
    time.hashCode +
    count.hashCode +
    confidence.hashCode +
    startedAt.hashCode +
    updatedAt.hashCode +
    areaConfidences.hashCode;

  @override
  String toString() => 'UserquakeEvaluation[id=$id, code=$code, time=$time, count=$count, confidence=$confidence, startedAt=$startedAt, updatedAt=$updatedAt, areaConfidences=$areaConfidences]';

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
    if (areaConfidences != null) {
      json['area_confidences'] = areaConfidences;
    }
    return json;
  }

  static List<UserquakeEvaluation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserquakeEvaluation>[]
      : json.map((v) => UserquakeEvaluation.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserquakeEvaluation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserquakeEvaluation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserquakeEvaluation.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserquakeEvaluation-objects as value to a dart map
  static Map<String, List<UserquakeEvaluation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserquakeEvaluation>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserquakeEvaluation.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

