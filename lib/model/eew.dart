//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class EEW extends BasicData {
  /// Returns a new [EEW] instance.
  EEW({
    @required this.id,
    this.code,
    @required this.time,
    this.test,
    this.earthquake,
    @required this.issue,
    @required this.cancelled,
    this.areas = const [],
  });

  /// 情報を一意に識別するID
  String id;

  /// 情報コード。常に556です。
  int code;

  /// 受信日時。形式は `2006/01/02 15:04:05.999` です。
  String time;

  /// テストかどうか。
  bool test;

  EEWAllOfEarthquake earthquake;

  EEWAllOfIssue issue;

  /// 取消
  bool cancelled;

  /// 細分区域
  List<EEWAllOfAreas> areas;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EEW &&
          other.id == id &&
          other.code == code &&
          other.time == time &&
          other.test == test &&
          other.earthquake == earthquake &&
          other.issue == issue &&
          other.cancelled == cancelled &&
          other.areas == areas;

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (code == null ? 0 : code.hashCode) +
      (time == null ? 0 : time.hashCode) +
      (test == null ? 0 : test.hashCode) +
      (earthquake == null ? 0 : earthquake.hashCode) +
      (issue == null ? 0 : issue.hashCode) +
      (cancelled == null ? 0 : cancelled.hashCode) +
      (areas == null ? 0 : areas.hashCode);

  @override
  String toString() =>
      'EEW[id=$id, code=$code, time=$time, test=$test, earthquake=$earthquake, issue=$issue, cancelled=$cancelled, areas=$areas]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
    json[r'code'] = code == null ? null : code;
    json[r'time'] = time;
    if (test != null) {
      json[r'test'] = test;
    }
    if (earthquake != null) {
      json[r'earthquake'] = earthquake;
    }
    json[r'issue'] = issue;
    json[r'cancelled'] = cancelled;
    if (areas != null) {
      json[r'areas'] = areas;
    }
    return json;
  }

  /// Returns a new [EEW] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EEW fromJson(Map<String, dynamic> json) => json == null
      ? null
      : EEW(
          id: json[r'id'],
          code: json[r'code'],
          time: json[r'time'],
          test: json[r'test'],
          earthquake: EEWAllOfEarthquake.fromJson(json[r'earthquake']),
          issue: EEWAllOfIssue.fromJson(json[r'issue']),
          cancelled: json[r'cancelled'],
          areas: EEWAllOfAreas.listFromJson(json[r'areas']),
        );

  static List<EEW> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEW>[]
          : json.map((dynamic value) => EEW.fromJson(value)).toList(growable: true == growable);

  static Map<String, EEW> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EEW>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = EEW.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EEW-objects as value to a dart map
  static Map<String, List<EEW>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<EEW>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = EEW.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
