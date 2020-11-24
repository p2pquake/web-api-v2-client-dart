import 'package:p2pquake_api_v2/api.dart';
import 'package:test/test.dart';

// tests for JMATsunamiAllOfAreas
void main() {
  final instance = JMATsunamiAllOfAreas();

  group('test JMATsunamiAllOfAreas', () {
    // 津波予報の種類
    // String grade
    test('to test the property `grade`', () async {
      // TODO
    });

    // 直ちに津波が来襲すると予想されているかどうか
    // bool immediate
    test('to test the property `immediate`', () async {
      // TODO
    });

    // 津波予報区名。[気象庁｜津波予報区について](http://www.data.jma.go.jp/svd/eqev/data/joho/t-yohokuinfo.html)を参照。
    // String name
    test('to test the property `name`', () async {
      // TODO
    });
  });
}
