//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class UserquakeAllOf {
  /// Returns a new [UserquakeAllOf] instance.
  UserquakeAllOf({
    this.code,
    required this.area,
  });

  /// Returns a new [UserquakeAllOf] instance and optionally import its values from
  /// [json] if it's non-null.
  UserquakeAllOf.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      code = json['code'];
      area = json['area'];
    }
  }

  /// 情報コード。常に561です。
  Object? code;

  /// 地域コード
  int? area;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserquakeAllOf && other.code == code && other.area == area;

  @override
  int get hashCode => (code?.hashCode ?? 0) + area.hashCode;

  @override
  String toString() => 'UserquakeAllOf[code=$code, area=$area]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json['code'] = code;
    }
    if (area != null) {
      json['area'] = area;
    }
    return json;
  }

  static List<UserquakeAllOf>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <UserquakeAllOf>[]
          : json
              .map((v) => UserquakeAllOf.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, UserquakeAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserquakeAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = UserquakeAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserquakeAllOf-objects as value to a dart map
  static Map<String, List<UserquakeAllOf>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<UserquakeAllOf>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserquakeAllOf.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
