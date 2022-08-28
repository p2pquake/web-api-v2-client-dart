//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class EEWAllOfIssue {
  /// Returns a new [EEWAllOfIssue] instance.
  EEWAllOfIssue({
    @required this.time,
    @required this.eventId,
    @required this.serial,
  });

  /// 発表時刻
  String time;

  /// 識別情報
  String eventId;

  /// 情報番号
  String serial;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EEWAllOfIssue && other.time == time && other.eventId == eventId && other.serial == serial;

  @override
  int get hashCode =>
      (time == null ? 0 : time.hashCode) +
      (eventId == null ? 0 : eventId.hashCode) +
      (serial == null ? 0 : serial.hashCode);

  @override
  String toString() => 'EEWAllOfIssue[time=$time, eventId=$eventId, serial=$serial]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'time'] = time;
    json[r'eventId'] = eventId;
    json[r'serial'] = serial;
    return json;
  }

  /// Returns a new [EEWAllOfIssue] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EEWAllOfIssue fromJson(Map<String, dynamic> json) => json == null
      ? null
      : EEWAllOfIssue(
          time: json[r'time'],
          eventId: json[r'eventId'],
          serial: json[r'serial'],
        );

  static List<EEWAllOfIssue> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWAllOfIssue>[]
          : json.map((dynamic value) => EEWAllOfIssue.fromJson(value)).toList(growable: true == growable);

  static Map<String, EEWAllOfIssue> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EEWAllOfIssue>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = EEWAllOfIssue.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EEWAllOfIssue-objects as value to a dart map
  static Map<String, List<EEWAllOfIssue>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<EEWAllOfIssue>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = EEWAllOfIssue.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
