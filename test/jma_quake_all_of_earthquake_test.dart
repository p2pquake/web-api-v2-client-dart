import 'package:net.p2pquake.api.v2/api.dart';
import 'package:test/test.dart';

// tests for JMAQuakeAllOfEarthquake
void main() {
  final instance = JMAQuakeAllOfEarthquake();

  group('test JMAQuakeAllOfEarthquake', () {
    // 発生日時
    // String time
    test('to test the property `time`', () async {
      // TODO
    });

    // JMAQuakeAllOfEarthquakeHypocenter hypocenter
    test('to test the property `hypocenter`', () async {
      // TODO
    });

    // 最大震度。震度情報が存在しない場合は-1となります。
    // int maxScale
    test('to test the property `maxScale`', () async {
      // TODO
    });

    // 国内への津波の有無
    // String domesticTsunami
    test('to test the property `domesticTsunami`', () async {
      // TODO
    });

    // 海外での津波の有無
    // String foreignTsunami
    test('to test the property `foreignTsunami`', () async {
      // TODO
    });


  });

}
