//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class EEWAllOfEarthquakeHypocenter {
  /// Returns a new [EEWAllOfEarthquakeHypocenter] instance.
  EEWAllOfEarthquakeHypocenter({
    this.name,
    this.reduceName,
    this.latitude,
    this.longitude,
    this.depth,
    this.magnitude,
  });

  /// 震央地名
  String name;

  /// 短縮用震央地名
  String reduceName;

  /// 緯度。震源情報が存在しない場合は-200となります。
  num latitude;

  /// 経度。震源情報が存在しない場合は-200となります。
  num longitude;

  /// 深さ(km)。震源情報が存在しない場合は-1となります。   システムの都合で小数点が付きますが整数部のみ有効です。
  num depth;

  /// マグニチュード。震源情報が存在しない場合は-1となります。
  num magnitude;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EEWAllOfEarthquakeHypocenter &&
          other.name == name &&
          other.reduceName == reduceName &&
          other.latitude == latitude &&
          other.longitude == longitude &&
          other.depth == depth &&
          other.magnitude == magnitude;

  @override
  int get hashCode =>
      (name == null ? 0 : name.hashCode) +
      (reduceName == null ? 0 : reduceName.hashCode) +
      (latitude == null ? 0 : latitude.hashCode) +
      (longitude == null ? 0 : longitude.hashCode) +
      (depth == null ? 0 : depth.hashCode) +
      (magnitude == null ? 0 : magnitude.hashCode);

  @override
  String toString() =>
      'EEWAllOfEarthquakeHypocenter[name=$name, reduceName=$reduceName, latitude=$latitude, longitude=$longitude, depth=$depth, magnitude=$magnitude]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (reduceName != null) {
      json[r'reduceName'] = reduceName;
    }
    if (latitude != null) {
      json[r'latitude'] = latitude;
    }
    if (longitude != null) {
      json[r'longitude'] = longitude;
    }
    if (depth != null) {
      json[r'depth'] = depth;
    }
    if (magnitude != null) {
      json[r'magnitude'] = magnitude;
    }
    return json;
  }

  /// Returns a new [EEWAllOfEarthquakeHypocenter] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EEWAllOfEarthquakeHypocenter fromJson(Map<String, dynamic> json) => json == null
      ? null
      : EEWAllOfEarthquakeHypocenter(
          name: json[r'name'],
          reduceName: json[r'reduceName'],
          latitude: json[r'latitude'] == null ? null : json[r'latitude'].toDouble(),
          longitude: json[r'longitude'] == null ? null : json[r'longitude'].toDouble(),
          depth: json[r'depth'] == null ? null : json[r'depth'].toDouble(),
          magnitude: json[r'magnitude'] == null ? null : json[r'magnitude'].toDouble(),
        );

  static List<EEWAllOfEarthquakeHypocenter> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <EEWAllOfEarthquakeHypocenter>[]
          : json
              .map((dynamic value) => EEWAllOfEarthquakeHypocenter.fromJson(value))
              .toList(growable: true == growable);

  static Map<String, EEWAllOfEarthquakeHypocenter> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EEWAllOfEarthquakeHypocenter>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = EEWAllOfEarthquakeHypocenter.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EEWAllOfEarthquakeHypocenter-objects as value to a dart map
  static Map<String, List<EEWAllOfEarthquakeHypocenter>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<EEWAllOfEarthquakeHypocenter>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = EEWAllOfEarthquakeHypocenter.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
