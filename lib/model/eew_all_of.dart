//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class EEWAllOf {
  /// Returns a new [EEWAllOf] instance.
  EEWAllOf({
    this.code,
    this.test,
    this.earthquake,
    @required this.issue,
    @required this.cancelled,
    this.areas = const [],
  });

  /// 情報コード。常に556です。
  Object code;

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
      other is EEWAllOf &&
          other.code == code &&
          other.test == test &&
          other.earthquake == earthquake &&
          other.issue == issue &&
          other.cancelled == cancelled &&
          other.areas == areas;

  @override
  int get hashCode =>
      (code == null ? 0 : code.hashCode) +
      (test == null ? 0 : test.hashCode) +
      (earthquake == null ? 0 : earthquake.hashCode) +
      (issue == null ? 0 : issue.hashCode) +
      (cancelled == null ? 0 : cancelled.hashCode) +
      (areas == null ? 0 : areas.hashCode);

  @override
  String toString() =>
      'EEWAllOf[code=$code, test=$test, earthquake=$earthquake, issue=$issue, cancelled=$cancelled, areas=$areas]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
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

  /// Returns a new [EEWAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EEWAllOf fromJson(Map<String, dynamic> json) => json == null
      ? null
      : EEWAllOf(
          code: json[r'code'],
          test: json[r'test'],
          earthquake: EEWAllOfEarthquake.fromJson(json[r'earthquake']),
          issue: EEWAllOfIssue.fromJson(json[r'issue']),
          cancelled: json[r'cancelled'],
          areas: EEWAllOfAreas.listFromJson(json[r'areas']),
        );

  static List<EEWAllOf> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWAllOf>[]
          : json.map((dynamic value) => EEWAllOf.fromJson(value)).toList(growable: true == growable);

  static Map<String, EEWAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EEWAllOf>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = EEWAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EEWAllOf-objects as value to a dart map
  static Map<String, List<EEWAllOf>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<EEWAllOf>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = EEWAllOf.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
