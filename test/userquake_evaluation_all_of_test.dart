import 'package:net.p2pquake.api.v2/api.dart';
import 'package:test/test.dart';

// tests for UserquakeEvaluationAllOf
void main() {
  final instance = UserquakeEvaluationAllOf();

  group('test UserquakeEvaluationAllOf', () {
    // 情報コード。常に9611です。
    // Object code
    test('to test the property `code`', () async {
      // TODO
    });

    // 件数
    // int count
    test('to test the property `count`', () async {
      // TODO
    });

    // P2P地震情報 Beta3 における信頼度（0～1）   0: 非表示、0.97015: レベル1、0.96774: レベル2、0.97024: レベル3、0.98052: レベル4。   値は適合率 (precision) です。 
    // num confidence
    test('to test the property `confidence`', () async {
      // TODO
    });

    // 開始日時。地震感知情報のイベントを一意に識別するキーとなります。 形式は `2006/01/02 15:04:05.999` です。 
    // String startedAt
    test('to test the property `startedAt`', () async {
      // TODO
    });

    // 更新日時。形式は `2006/01/02 15:04:05.999` です。
    // String updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // 評価日時。形式は `2006/01/02 15:04:05.999` です。
    // String time
    test('to test the property `time`', () async {
      // TODO
    });

    // 地域ごとの信頼度情報
    // Map<String, UserquakeEvaluationAllOfAreaConfidences> areaConfidences (default value: const {})
    test('to test the property `areaConfidences`', () async {
      // TODO
    });


  });

}
