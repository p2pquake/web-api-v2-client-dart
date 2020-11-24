//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:net.p2pquake.api.v2/api.dart';
import 'package:test/test.dart';


/// tests for P2PAPIApi
void main() {
  final instance = P2PAPIApi();

  group('tests for P2PAPIApi', () {
    // P2P地震情報 JSON API (v2)
    //
    // P2P地震情報の各種情報を返却します。   未実装: [JSON API v1](https://www.p2pquake.net/dev/json-api/) をご利用ください。 
    //
    //Future<List<AnyOf<JMAQuake,JMATsunami,Areapeers,EEWDetection,Userquake,UserquakeEvaluation>>> historyGet({ int limit, int offset }) async
    test('test historyGet', () async {
      // TODO
    });

    // P2P地震情報 WebSocket API
    //
    // P2P地震情報の各種情報をリアルタイムに配信します。 WebSocket プロトコルでの接続が必要です。 - テキストフレーム (opcode: 1) で JSON オブジェクトを配信します。 1 フレーム毎にスキーマで指定したいずれかの情報が含まれています。 - 同一の情報を複数回配信する可能性があります。 `id` を用いて重複を取り除くことを推奨します。 - 情報は P2P地震情報 JSON API (v2) と全く同じものです。過去の情報の取得には JSON API をご利用ください。 
    //
    //Future wsGet() async
    test('test wsGet', () async {
      // TODO
    });

  });
}
