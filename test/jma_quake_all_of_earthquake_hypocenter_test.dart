import 'package:net.p2pquake.api.v2/api.dart';
import 'package:test/test.dart';

// tests for JMAQuakeAllOfEarthquakeHypocenter
void main() {
  final instance = JMAQuakeAllOfEarthquakeHypocenter();

  group('test JMAQuakeAllOfEarthquakeHypocenter', () {
    // 名称
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // 緯度。震源情報が存在しない場合は-200となります。
    // num latitude
    test('to test the property `latitude`', () async {
      // TODO
    });

    // 経度。震源情報が存在しない場合は-200となります。
    // num longitude
    test('to test the property `longitude`', () async {
      // TODO
    });

    // 深さ(km)。「ごく浅い」は0、震源情報が存在しない場合は-1となります。
    // int depth
    test('to test the property `depth`', () async {
      // TODO
    });

    // マグニチュード。震源情報が存在しない場合は-1となります。
    // num magnitude
    test('to test the property `magnitude`', () async {
      // TODO
    });


  });

}
