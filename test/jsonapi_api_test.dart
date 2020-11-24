//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:net.p2pquake.api.v2/api.dart';
import 'package:test/test.dart';


/// tests for JSONAPIApi
void main() {
  final instance = JSONAPIApi();

  group('tests for JSONAPIApi', () {
    // 地震情報リスト
    //
    // 地震情報を返却します。デフォルトは新しい順に最大10件です。 データは2015年1月10日から提供しています。 
    //
    //Future<List<JMAQuake>> jmaQuakeGet({ int limit, int offset, int order, String sinceDate, String untilDate, String quakeType, num minMagnitude, num maxMagnitude, int minScale, int maxScale, List<Object> prefectures[] }) async
    test('test jmaQuakeGet', () async {
      // TODO
    });

    // 地震情報
    //
    //Future<JMAQuake> jmaQuakeIdGet(String id) async
    test('test jmaQuakeIdGet', () async {
      // TODO
    });

    // 津波予報リスト
    //
    // 津波予報を返却します。デフォルトは新しい順に最大10件です。 データは2016年11月22日から提供しています。 
    //
    //Future<List<JMATsunami>> jmaTsunamiGet({ int limit, int offset, int order, String sinceDate, String untilDate }) async
    test('test jmaTsunamiGet', () async {
      // TODO
    });

    // 津波予報
    //
    //Future<JMATsunami> jmaTsunamiIdGet(String id) async
    test('test jmaTsunamiIdGet', () async {
      // TODO
    });

  });
}
