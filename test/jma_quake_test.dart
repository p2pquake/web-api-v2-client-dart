import 'package:net.p2pquake.api.v2/api.dart';
import 'package:test/test.dart';

// tests for JMAQuake
void main() {
  final instance = JMAQuake();

  group('test JMAQuake', () {
    // 情報を一意に識別するID
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // 情報コード。常に551です。
    // Object code
    test('to test the property `code`', () async {
      // TODO
    });

    // 受信日時。形式は `2006/01/02 15:04:05.999` です。
    // String time
    test('to test the property `time`', () async {
      // TODO
    });

    // JMAQuakeAllOfIssue issue
    test('to test the property `issue`', () async {
      // TODO
    });

    // JMAQuakeAllOfEarthquake earthquake
    test('to test the property `earthquake`', () async {
      // TODO
    });

    // 震度観測点の情報
    // List<JMAQuakeAllOfPoints> points (default value: const [])
    test('to test the property `points`', () async {
      // TODO
    });


  });

}
