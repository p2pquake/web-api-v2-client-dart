//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class Areapeers extends BasicData {
  /// Returns a new [Areapeers] instance.
  Areapeers({
    @required this.id,
    @required this.code,
    @required this.time,
    this.areas = const [],
  });

  /// Returns a new [Areapeers] instance and optionally import its values from
  /// [json] if it's non-null.
  Areapeers.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      id = json['id'];
      code = json['code'];
      time = json['time'];
      areas = AreapeersAllOfAreas.listFromJson(json['areas']);
    }
  }

  /// 情報を一意に識別するID
  String id;

  /// 情報コード。常に555です。
  int code;

  /// 受信日時。形式は `2006/01/02 15:04:05.999` です。
  String time;

  /// ピアの地域分布
  List<AreapeersAllOfAreas> areas;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Areapeers &&
          other.id == id &&
          other.code == code &&
          other.time == time &&
          other.areas == areas;

  @override
  int get hashCode =>
      id.hashCode + (code?.hashCode ?? 0) + time.hashCode + areas.hashCode;

  @override
  String toString() =>
      'Areapeers[id=$id, code=$code, time=$time, areas=$areas]';

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
    if (areas != null) {
      json['areas'] = areas;
    }
    return json;
  }

  static List<Areapeers> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <Areapeers>[]
          : json
              .map((v) => Areapeers.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, Areapeers> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Areapeers>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Areapeers.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Areapeers-objects as value to a dart map
  static Map<String, List<Areapeers>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<Areapeers>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Areapeers.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
