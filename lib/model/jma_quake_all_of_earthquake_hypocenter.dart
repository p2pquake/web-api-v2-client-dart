//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JMAQuakeAllOfEarthquakeHypocenter {
  /// Returns a new [JMAQuakeAllOfEarthquakeHypocenter] instance.
  JMAQuakeAllOfEarthquakeHypocenter({
    this.name,
    this.latitude,
    this.longitude,
    this.depth,
    this.magnitude,
  });

  /// Returns a new [JMAQuakeAllOfEarthquakeHypocenter] instance and optionally import its values from
  /// [json] if it's non-null.
  JMAQuakeAllOfEarthquakeHypocenter.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      name = json['name'];
      latitude = json['latitude'] == null ?
        null :
        json['latitude'].toDouble();
      longitude = json['longitude'] == null ?
        null :
        json['longitude'].toDouble();
      depth = json['depth'];
      magnitude = json['magnitude'] == null ?
        null :
        json['magnitude'].toDouble();
    }
  }

  /// 名称
  String name;

  /// 緯度。震源情報が存在しない場合は-200となります。
  num latitude;

  /// 経度。震源情報が存在しない場合は-200となります。
  num longitude;

  /// 深さ(km)。「ごく浅い」は0、震源情報が存在しない場合は-1となります。
  int depth;

  /// マグニチュード。震源情報が存在しない場合は-1となります。
  num magnitude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JMAQuakeAllOfEarthquakeHypocenter &&
     other.name == name &&
     other.latitude == latitude &&
     other.longitude == longitude &&
     other.depth == depth &&
     other.magnitude == magnitude;

  @override
  int get hashCode =>
    name.hashCode +
    latitude.hashCode +
    longitude.hashCode +
    depth.hashCode +
    magnitude.hashCode;

  @override
  String toString() => 'JMAQuakeAllOfEarthquakeHypocenter[name=$name, latitude=$latitude, longitude=$longitude, depth=$depth, magnitude=$magnitude]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json['name'] = name;
    }
    if (latitude != null) {
      json['latitude'] = latitude;
    }
    if (longitude != null) {
      json['longitude'] = longitude;
    }
    if (depth != null) {
      json['depth'] = depth;
    }
    if (magnitude != null) {
      json['magnitude'] = magnitude;
    }
    return json;
  }

  static List<JMAQuakeAllOfEarthquakeHypocenter> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <JMAQuakeAllOfEarthquakeHypocenter>[]
      : json.map((v) => JMAQuakeAllOfEarthquakeHypocenter.fromJson(v)).toList(growable: true == growable);

  static Map<String, JMAQuakeAllOfEarthquakeHypocenter> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMAQuakeAllOfEarthquakeHypocenter>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMAQuakeAllOfEarthquakeHypocenter.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMAQuakeAllOfEarthquakeHypocenter-objects as value to a dart map
  static Map<String, List<JMAQuakeAllOfEarthquakeHypocenter>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<JMAQuakeAllOfEarthquakeHypocenter>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = JMAQuakeAllOfEarthquakeHypocenter.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

