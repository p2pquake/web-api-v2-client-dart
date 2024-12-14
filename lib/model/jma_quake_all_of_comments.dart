//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JMAQuakeAllOfComments {
  /// Returns a new [JMAQuakeAllOfComments] instance.
  JMAQuakeAllOfComments({
    this.freeFormComment,
  });

  /// 自由付加文。ない場合は空文字列となります。気象庁の発表電文に含まれる自由付加文をそのまま提供しており、火山噴火に伴って発表される遠地地震に関する情報では、「大規模な噴火が発生しました」という文言が含まれます（2024年7月現在）。
  String? freeFormComment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JMAQuakeAllOfComments && other.freeFormComment == freeFormComment;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (freeFormComment == null ? 0 : freeFormComment.hashCode);

  @override
  String toString() => 'JMAQuakeAllOfComments[freeFormComment=$freeFormComment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (freeFormComment != null) {
      json[r'freeFormComment'] = freeFormComment;
    }
    return json;
  }

  /// Returns a new [JMAQuakeAllOfComments] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  JMAQuakeAllOfComments.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      freeFormComment = json['freeFormComment'];
    }
  }

  static List<JMAQuakeAllOfComments>? listFromJson(
    List<dynamic> json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <JMAQuakeAllOfComments>[]
          : json.map((v) => JMAQuakeAllOfComments.fromJson(v)).toList(growable: true == growable);

  static Map<String, JMAQuakeAllOfComments> mapFromJson(Map<String, dynamic> json) {
    final map = <String, JMAQuakeAllOfComments>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = JMAQuakeAllOfComments.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of JMAQuakeAllOfComments-objects as value to a dart map
  static Map<String, List<JMAQuakeAllOfComments>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<JMAQuakeAllOfComments>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = JMAQuakeAllOfComments.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
