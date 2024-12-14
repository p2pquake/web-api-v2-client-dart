//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class Userquake extends BasicData {
  /// Returns a new [Userquake] instance.
  Userquake({
    required this.id,
    required this.code,
    required this.time,
    required this.area,
  }) : super(id: id, code: code, time: time);

  /// Returns a new [Userquake] instance and optionally import its values from
  /// [json] if it's non-null.
  Userquake.fromJson(Map<String, dynamic>? json) : super.fromJson(json) {
    if (json != null) {
      id = json['id'];
      code = json['code'];
      time = json['time'];
      area = json['area'];
    }
  }

  /// 情報を一意に識別するID
  String? id;

  /// 情報コード。常に561です。
  int? code;

  /// 受信日時。形式は `2006/01/02 15:04:05.999` です。
  String? time;

  /// 地域コード
  int? area;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Userquake &&
          other.id == id &&
          other.code == code &&
          other.time == time &&
          other.area == area;

  @override
  int get hashCode => id.hashCode + (code?.hashCode ?? 0) + time.hashCode + area.hashCode;

  @override
  String toString() => 'Userquake[id=$id, code=$code, time=$time, area=$area]';

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
    if (area != null) {
      json['area'] = area;
    }
    return json;
  }

  static List<Userquake>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <Userquake>[]
          : json.map((v) => Userquake.fromJson(v)).toList(growable: true == growable);

  static Map<String, Userquake> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Userquake>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Userquake.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Userquake-objects as value to a dart map
  static Map<String, List<Userquake>?> mapListFromJson(
    Map<String, dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Userquake>?>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Userquake.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
