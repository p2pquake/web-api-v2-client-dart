import 'package:net.p2pquake.api.v2/api.dart';
import 'package:test/test.dart';

// tests for UserquakeEvaluationAllOfAreaConfidences
void main() {
  final instance = UserquakeEvaluationAllOfAreaConfidences();

  group('test UserquakeEvaluationAllOfAreaConfidences', () {
    // 信頼度（0～1） P2P地震情報 Beta3 においては、 0未満: F、0.0以上0.2未満: E、0.2以上0.4未満: D、0.4以上0.6未満: C、0.6以上0.8未満: B、0.8以上: A です。 
    // num confidence
    test('to test the property `confidence`', () async {
      // TODO
    });

    // 件数
    // int count
    test('to test the property `count`', () async {
      // TODO
    });

    // P2P地震情報 Beta3 における信頼度表示
    // String display
    test('to test the property `display`', () async {
      // TODO
    });


  });

}
