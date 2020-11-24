//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class AreapeersAllOfAreas {
  /// Returns a new [AreapeersAllOfAreas] instance.
  AreapeersAllOfAreas({
    @required this.id,
    @required this.peer,
  });

  /// Returns a new [AreapeersAllOfAreas] instance and optionally import its values from
  /// [json] if it's non-null.
  AreapeersAllOfAreas.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      id = json['id'];
      peer = json['peer'];
    }
  }

  /// 地域コード
  int id;

  /// ピア数
  int peer;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AreapeersAllOfAreas && other.id == id && other.peer == peer;

  @override
  int get hashCode => id.hashCode + peer.hashCode;

  @override
  String toString() => 'AreapeersAllOfAreas[id=$id, peer=$peer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id;
    }
    if (peer != null) {
      json['peer'] = peer;
    }
    return json;
  }

  static List<AreapeersAllOfAreas> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <AreapeersAllOfAreas>[]
          : json
              .map((v) => AreapeersAllOfAreas.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, AreapeersAllOfAreas> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, AreapeersAllOfAreas>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = AreapeersAllOfAreas.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AreapeersAllOfAreas-objects as value to a dart map
  static Map<String, List<AreapeersAllOfAreas>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<AreapeersAllOfAreas>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AreapeersAllOfAreas.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
