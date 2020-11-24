//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class BasicData {
  /// Returns a new [BasicData] instance.
  BasicData({
    @required this.id,
    @required this.code,
    @required this.time,
  });

  /// Returns a new [BasicData] instance and optionally import its values from
  /// [json] if it's non-null.
  BasicData.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      id = json['id'];
      code = json['code'];
      time = json['time'];
    }

    if (code == 551) {
      JMAQuake.fromJson(json) as BasicData;
    }
  }

  /// 情報を一意に識別するID
  String id;

  /// 情報の種類を表すコード
  int code;

  /// 受信日時。形式は `2006/01/02 15:04:05.999` です。
  String time;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasicData &&
          other.id == id &&
          other.code == code &&
          other.time == time;

  @override
  int get hashCode => id.hashCode + code.hashCode + time.hashCode;

  @override
  String toString() => 'BasicData[id=$id, code=$code, time=$time]';

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
    return json;
  }

  static List<BasicData> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <BasicData>[]
          : json
              .map((v) => BasicData.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, BasicData> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BasicData>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BasicData.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BasicData-objects as value to a dart map
  static Map<String, List<BasicData>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<BasicData>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BasicData.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
