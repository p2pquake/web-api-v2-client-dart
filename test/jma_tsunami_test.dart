import 'package:net.p2pquake.api.v2/api.dart';
import 'package:test/test.dart';

// tests for JMATsunami
void main() {
  final instance = JMATsunami();

  group('test JMATsunami', () {
    // 情報を一意に識別するID
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // 情報コード。常に552です。
    // Object code
    test('to test the property `code`', () async {
      // TODO
    });

    // 受信日時。形式は `2006/01/02 15:04:05.999` です。
    // String time
    test('to test the property `time`', () async {
      // TODO
    });

    // 津波予報が解除されたかどうか。trueの場合、areasは空配列です。
    // bool cancelled
    test('to test the property `cancelled`', () async {
      // TODO
    });

    // JMATsunamiAllOfIssue issue
    test('to test the property `issue`', () async {
      // TODO
    });

    // 津波予報の詳細
    // List<JMATsunamiAllOfAreas> areas (default value: const [])
    test('to test the property `areas`', () async {
      // TODO
    });


  });

}
