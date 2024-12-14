//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class AreapeersAllOf {
  /// Returns a new [AreapeersAllOf] instance.
  AreapeersAllOf({
    this.code,
    this.areas = const [],
  });

  /// Returns a new [AreapeersAllOf] instance and optionally import its values from
  /// [json] if it's non-null.
  AreapeersAllOf.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      code = json['code'];
      areas = AreapeersAllOfAreas.listFromJson(json['areas']);
    }
  }

  /// 情報コード。常に555です。
  int? code;

  /// ピアの地域分布
  List<AreapeersAllOfAreas>? areas;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AreapeersAllOf && other.code == code && other.areas == areas;

  @override
  int get hashCode => (code?.hashCode ?? 0) + areas.hashCode;

  @override
  String toString() => 'AreapeersAllOf[code=$code, areas=$areas]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json['code'] = code;
    }
    if (areas != null) {
      json['areas'] = areas;
    }
    return json;
  }

  static List<AreapeersAllOf>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <AreapeersAllOf>[]
          : json
              .map((v) => AreapeersAllOf.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, AreapeersAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AreapeersAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = AreapeersAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AreapeersAllOf-objects as value to a dart map
  static Map<String, List<AreapeersAllOf>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<AreapeersAllOf>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AreapeersAllOf.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
