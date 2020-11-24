import 'package:net.p2pquake.api.v2/api.dart';
import 'package:test/test.dart';

// tests for JMAQuakeAllOfPoints
void main() {
  final instance = JMAQuakeAllOfPoints();

  group('test JMAQuakeAllOfPoints', () {
    // 都道府県
    // String pref
    test('to test the property `pref`', () async {
      // TODO
    });

    // 震度観測点名称（震度速報の場合は [気象庁 | 緊急地震速報や震度情報で用いる区域の名称](http://www.data.jma.go.jp/svd/eqev/data/joho/shindo-name.html) に記載のある区域名）
    // String addr
    test('to test the property `addr`', () async {
      // TODO
    });

    // 区域名かどうか
    // bool isArea
    test('to test the property `isArea`', () async {
      // TODO
    });

    // 震度
    // num scale
    test('to test the property `scale`', () async {
      // TODO
    });


  });

}
