//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class EEWAllOfEarthquake {
  /// Returns a new [EEWAllOfEarthquake] instance.
  EEWAllOfEarthquake({
    @required this.originTime,
    @required this.arrivalTime,
    this.condition,
    @required this.hypocenter,
  });

  /// 地震発生時刻
  String originTime;

  /// 地震発現時刻
  String arrivalTime;

  /// 仮定震源要素の場合、値は \"仮定震源要素\" となります。
  String condition;

  EEWAllOfEarthquakeHypocenter hypocenter;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EEWAllOfEarthquake &&
          other.originTime == originTime &&
          other.arrivalTime == arrivalTime &&
          other.condition == condition &&
          other.hypocenter == hypocenter;

  @override
  int get hashCode =>
      (originTime == null ? 0 : originTime.hashCode) +
      (arrivalTime == null ? 0 : arrivalTime.hashCode) +
      (condition == null ? 0 : condition.hashCode) +
      (hypocenter == null ? 0 : hypocenter.hashCode);

  @override
  String toString() =>
      'EEWAllOfEarthquake[originTime=$originTime, arrivalTime=$arrivalTime, condition=$condition, hypocenter=$hypocenter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'originTime'] = originTime;
    json[r'arrivalTime'] = arrivalTime;
    if (condition != null) {
      json[r'condition'] = condition;
    }
    json[r'hypocenter'] = hypocenter;
    return json;
  }

  /// Returns a new [EEWAllOfEarthquake] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EEWAllOfEarthquake fromJson(Map<String, dynamic> json) => json == null
      ? null
      : EEWAllOfEarthquake(
          originTime: json[r'originTime'],
          arrivalTime: json[r'arrivalTime'],
          condition: json[r'condition'],
          hypocenter: EEWAllOfEarthquakeHypocenter.fromJson(json[r'hypocenter']),
        );

  static List<EEWAllOfEarthquake> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWAllOfEarthquake>[]
          : json.map((dynamic value) => EEWAllOfEarthquake.fromJson(value)).toList(growable: true == growable);

  static Map<String, EEWAllOfEarthquake> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EEWAllOfEarthquake>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = EEWAllOfEarthquake.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EEWAllOfEarthquake-objects as value to a dart map
  static Map<String, List<EEWAllOfEarthquake>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<EEWAllOfEarthquake>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = EEWAllOfEarthquake.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
