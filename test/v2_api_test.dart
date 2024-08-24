//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:p2pquake_api_v2/api.dart';
import 'package:test/test.dart';

/// tests for P2PQuake JSON API (v2)
void main() {
  final instance = V2Api();

  void replaceResponse(String body) {
    instance.apiClient.client = MockClient((req) async {
      return Response.bytes(
        utf8.encode(body),
        200,
        headers: {HttpHeaders.contentTypeHeader: "application/json; charset=utf-8"},
      );
    });
  }

  group('P2PQuake JSON API (v2)', () {
    group('/history', () {
      test('returns no items', () async {
        replaceResponse("[]");
        final v = await instance.historyGet();
        expect(v.length, equals(0));
      });

      test('returns 1 item', () async {
        replaceResponse(
            '[{"area":325,"code":561,"created_at":"2020/12/03 20:35:53.091","hop":1,"id":"5fc8cd9902add60b3469806d","time":"2020/12/03 20:35:53.084","uid":"9999920201203203553080","ver":"20150406"}]');
        final v = await instance.historyGet();
        expect(v.length, equals(1));
      });

      test('returns 2 items', () async {
        replaceResponse(
            '[{"area":325,"code":561,"created_at":"2020/12/03 20:35:53.091","hop":1,"id":"5fc8cd9902add60b3469806d","time":"2020/12/03 20:35:53.084","uid":"9999920201203203553080","ver":"20150406"},{"area":460,"code":561,"created_at":"2020/12/03 20:02:23.555","hop":1,"id":"5fc8c5bf02add60b2f6979d0","time":"2020/12/03 20:02:23.548","uid":"9999920201203200223457","ver":"20150406"}]');
        final v = await instance.historyGet();
        expect(v.length, equals(2));
      });

      test('returns JMAQuakes', () async {
        replaceResponse(
          '[' +
              // ScalePrompt
              '{"code":551,"earthquake":{"domesticTsunami":"Checking","foreignTsunami":"Unknown","hypocenter":{"depth":-1,"latitude":-200,"longitude":-200,"magnitude":-1,"name":""},"maxScale":70,"time":"2016/04/14 21:26:00"},"id":"570f976e843b7327f4000000","issue":{"correct":"None","source":"気象庁","time":"2016/04/14 21:29:00","type":"ScalePrompt"},"points":[{"addr":"熊本県熊本","isArea":true,"pref":"熊本県","scale":70},{"addr":"熊本県阿蘇","isArea":true,"pref":"熊本県","scale":45},{"addr":"鹿児島県甑島","isArea":true,"pref":"鹿児島県","scale":30}],"time":"2016/04/14 21:29:00","user-agent":"quake_checker/analyzer 20130830","ver":"20140906"},' +
              // Destination
              '{"code":551,"created_at":"2020/12/01 08:02:10.108","earthquake":{"domesticTsunami":"None","foreignTsunami":"Unknown","hypocenter":{"depth":610,"latitude":48.1,"longitude":141.1,"magnitude":6.6,"name":"サハリン西方沖"},"maxScale":-1,"time":"2020/12/01 07:55:00"},"id":"5fc579f202add60b326981f3","issue":{"correct":"None","source":"気象庁","time":"2020/12/01 07:59:00","type":"Destination"},"points":[],"time":"2020/12/01 08:01:06.587","user-agent":"quake_checker/analyzer 20180128","ver":"20180128"},' +
              // ScaleAndDestination (津波予報なし, 観測点なし)
              '{"code":551,"created_at":"2020/12/04 00:25:33.733","earthquake":{"domesticTsunami":"None","foreignTsunami":"Unknown","hypocenter":{"depth":10,"latitude":33.8,"longitude":139.3,"magnitude":2.9,"name":"三宅島近海"},"maxScale":10,"time":"2020/12/04 00:20:00"},"id":"5fc9036d02add60b3269852d","issue":{"correct":"None","source":"気象庁","time":"2020/12/04 00:23:00","type":"ScaleAndDestination"},"points":[],"time":"2020/12/04 00:25:08.636","user-agent":"quake_checker/analyzer 20180128","ver":"20180128"},' +
              // ScaleAndDestination (津波予報あり)
              '{"code":551,"created_at":"2019/06/18 22:28:42.873","earthquake":{"domesticTsunami":"Warning","foreignTsunami":"Unknown","hypocenter":{"depth":10,"latitude":38.6,"longitude":139.5,"magnitude":6.8,"name":"山形県沖"},"maxScale":60,"time":"2019/06/18 22:22:00"},"id":"5d08e70a02add629efecb61f","issue":{"correct":"None","source":"気象庁","time":"2019/06/18 22:26:00","type":"ScaleAndDestination"},"points":[{"addr":"新潟県下越","isArea":true,"pref":"新潟県","scale":60},{"addr":"山形県庄内","isArea":true,"pref":"山形県","scale":55},{"addr":"岩手県内陸北部","isArea":true,"pref":"岩手県","scale":40}],"time":"2019/06/18 22:28:08.209","user-agent":"quake_checker/analyzer 20180128","ver":"20180128"},' +
              // DetailScale
              '{"code":551,"created_at":"2018/09/06 03:15:06.880","comments": { "freeFormComment": "この地震の付近で地震が連続して発生したため、別の地震によって観測された震度の一部を混在して発表しています（地震毎の震度観測は、定期刊行物をご覧願います）。" },"earthquake":{"domesticTsunami":"NonEffective","foreignTsunami":"Unknown","hypocenter":{"depth":40,"latitude":42.7,"longitude":142,"magnitude":6.7,"name":"胆振地方中東部"},"maxScale":60,"time":"2018/09/06 03:08:00"},"id":"5b901d2af837cf68164a675f","issue":{"correct":"None","source":"気象庁","time":"2018/09/06 03:12:00","type":"DetailScale"},"points":[{"addr":"安平町早来北進","isArea":false,"pref":"北海道","scale":60},{"addr":"札幌北区太平","isArea":false,"pref":"北海道","scale":50},{"addr":"厚真町鹿沼","isArea":false,"pref":"北海道","scale":46},{"addr":"平内町東田沢","isArea":false,"pref":"青森県","scale":20},{"addr":"村上市岩船駅前","isArea":false,"pref":"新潟県","scale":10}],"time":"2018/09/06 03:14:05.261","user-agent":"quake_checker/analyzer 20180128","ver":"20180128"},' +
              // Foreign
              '{"code":551,"created_at":"2020/10/20 06:32:36.648","earthquake":{"domesticTsunami":"None","foreignTsunami":"WarningNearby","hypocenter":{"depth":-1,"latitude":54.7,"longitude":-159.6,"magnitude":7.4,"name":"アラスカ州南方"},"maxScale":-1,"time":"2020/10/20 05:55:00"},"id":"5f8e05f402add60b34694906","issue":{"correct":"None","source":"気象庁","time":"2020/10/20 06:30:00","type":"Foreign"},"points":[],"time":"2020/10/20 06:32:05.903","user-agent":"quake_checker/analyzer 20180128","ver":"20180128"},' +
              // Other
              '{"code":551,"created_at":"2020/11/22 21:03:07.981","earthquake":{"domesticTsunami":"Unknown","foreignTsunami":"Unknown","hypocenter":{"depth":-1,"latitude":-200,"longitude":-200,"magnitude":-1,"name":""},"maxScale":-1,"time":"0001/01/01 00:00:00"},"id":"5fba537b02add60b2f696cbf","issue":{"correct":"Unknown","source":"気象庁","time":"2020/11/22 21:00:00","type":"Other"},"points":[],"time":"2020/11/22 21:02:06.064","user-agent":"quake_checker/analyzer 20180128","ver":"20180128"}' +
              ']',
        );
        final v = await instance.historyGet();
        v.forEach((element) {
          expect(element, isA<JMAQuake>());
        });

        final quakes = v.map((e) => e as JMAQuake).toList();

        final scalePrompt = quakes[0];
        expect(scalePrompt.issue.type, equals(JMAQuakeAllOfIssueTypeEnum.scalePrompt));
        expect(scalePrompt.issue.type, isNot(equals(JMAQuakeAllOfIssueTypeEnum.other)));
        expect(scalePrompt.earthquake.time, equals("2016/04/14 21:26:00"));
        expect(
            scalePrompt.earthquake.maxScale, equals(JMAQuakeAllOfEarthquakeMaxScaleEnum.scale70));
        expect(scalePrompt.earthquake.maxScale,
            isNot(equals(JMAQuakeAllOfEarthquakeMaxScaleEnum.scale60)));
        expect(scalePrompt.earthquake.domesticTsunami,
            equals(JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.checking));
        expect(scalePrompt.earthquake.domesticTsunami,
            isNot(equals(JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.unknown)));
        expect(scalePrompt.points.length, equals(3));
        expect(scalePrompt.points[0].addr, equals("熊本県熊本"));
        expect(scalePrompt.points[0].isArea, isTrue);
        expect(scalePrompt.points[0].pref, equals("熊本県"));
        expect(scalePrompt.points[0].scale, equals(JMAQuakeAllOfPointsScaleEnum.scale70));
        expect(scalePrompt.points[0].scale, isNot(equals(JMAQuakeAllOfPointsScaleEnum.scale60)));

        final destination = quakes[1];
        expect(destination.issue.type, equals(JMAQuakeAllOfIssueTypeEnum.destination));
        expect(destination.earthquake.time, equals("2020/12/01 07:55:00"));
        expect(destination.earthquake.domesticTsunami,
            equals(JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.none));
        expect(destination.earthquake.hypocenter.depth, equals(610));
        expect(destination.earthquake.hypocenter.latitude, equals(48.1));
        expect(destination.earthquake.hypocenter.longitude, equals(141.1));
        expect(destination.earthquake.hypocenter.magnitude, equals(6.6));
        expect(destination.earthquake.hypocenter.name, equals("サハリン西方沖"));

        final scaleAndDest1 = quakes[2];
        expect(scaleAndDest1.issue.type, equals(JMAQuakeAllOfIssueTypeEnum.scaleAndDestination));
        expect(scaleAndDest1.earthquake.time, equals("2020/12/04 00:20:00"));
        expect(
            scaleAndDest1.earthquake.maxScale, equals(JMAQuakeAllOfEarthquakeMaxScaleEnum.scale10));
        expect(scaleAndDest1.earthquake.domesticTsunami,
            equals(JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.none));
        expect(scaleAndDest1.earthquake.hypocenter.depth, equals(10));
        expect(scaleAndDest1.earthquake.hypocenter.latitude, equals(33.8));
        expect(scaleAndDest1.earthquake.hypocenter.longitude, equals(139.3));
        expect(scaleAndDest1.earthquake.hypocenter.magnitude, equals(2.9));
        expect(scaleAndDest1.earthquake.hypocenter.name, equals("三宅島近海"));
        expect(scaleAndDest1.points, isEmpty);

        final scaleAndDest2 = quakes[3];
        expect(scaleAndDest2.issue.type, equals(JMAQuakeAllOfIssueTypeEnum.scaleAndDestination));
        expect(scaleAndDest2.earthquake.time, equals("2019/06/18 22:22:00"));
        expect(
            scaleAndDest2.earthquake.maxScale, equals(JMAQuakeAllOfEarthquakeMaxScaleEnum.scale60));
        expect(scaleAndDest2.earthquake.domesticTsunami,
            equals(JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.warning));
        expect(scaleAndDest2.earthquake.hypocenter.depth, equals(10));
        expect(scaleAndDest2.earthquake.hypocenter.latitude, equals(38.6));
        expect(scaleAndDest2.earthquake.hypocenter.longitude, equals(139.5));
        expect(scaleAndDest2.earthquake.hypocenter.magnitude, equals(6.8));
        expect(scaleAndDest2.earthquake.hypocenter.name, equals("山形県沖"));
        expect(scaleAndDest2.points.length, equals(3));
        expect(scaleAndDest2.points[0].addr, equals("新潟県下越"));
        expect(scaleAndDest2.points[0].scale, equals(JMAQuakeAllOfPointsScaleEnum.scale60));

        final detail = quakes[4];
        expect(detail.issue.type, equals(JMAQuakeAllOfIssueTypeEnum.detailScale));
        expect(detail.comments.freeFormComment, contains("混在して発表しています"));
        expect(detail.earthquake.time, equals("2018/09/06 03:08:00"));
        expect(detail.earthquake.maxScale, equals(JMAQuakeAllOfEarthquakeMaxScaleEnum.scale60));
        expect(detail.earthquake.domesticTsunami,
            equals(JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.nonEffective));
        expect(detail.earthquake.hypocenter.depth, equals(40));
        expect(detail.earthquake.hypocenter.latitude, equals(42.7));
        expect(detail.earthquake.hypocenter.longitude, equals(142));
        expect(detail.earthquake.hypocenter.magnitude, equals(6.7));
        expect(detail.earthquake.hypocenter.name, equals("胆振地方中東部"));
        expect(detail.points.length, equals(5));
        expect(detail.points[2].addr, equals("厚真町鹿沼"));
        expect(detail.points[2].isArea, isFalse);
        expect(detail.points[2].pref, equals("北海道"));
        expect(detail.points[2].scale, equals(JMAQuakeAllOfPointsScaleEnum.scale46));

        final foreign = quakes[5];
        expect(foreign.issue.type, equals(JMAQuakeAllOfIssueTypeEnum.foreign));
        expect(foreign.earthquake.time, equals("2020/10/20 05:55:00"));
        expect(foreign.earthquake.domesticTsunami,
            equals(JMAQuakeAllOfEarthquakeDomesticTsunamiEnum.none));
        expect(foreign.earthquake.foreignTsunami,
            equals(JMAQuakeAllOfEarthquakeForeignTsunamiEnum.warningNearby));
        expect(foreign.earthquake.foreignTsunami,
            isNot(equals(JMAQuakeAllOfEarthquakeForeignTsunamiEnum.unknown)));
        expect(foreign.earthquake.hypocenter.depth, equals(-1));
        expect(foreign.earthquake.hypocenter.latitude, equals(54.7));
        expect(foreign.earthquake.hypocenter.longitude, equals(-159.6));
        expect(foreign.earthquake.hypocenter.magnitude, equals(7.4));
        expect(foreign.earthquake.hypocenter.name, equals("アラスカ州南方"));
        expect(foreign.points, isEmpty);

        final other = quakes[6];
        expect(other.issue.type, equals(JMAQuakeAllOfIssueTypeEnum.other));
      });

      test('returns JMATsunamis', () async {
        replaceResponse('[' +
            // 旧形式
            '{"areas":[{"grade":"Warning","immediate":false,"name":"福島県"},{"grade":"Watch","immediate":false,"name":"青森県太平洋沿岸"},{"grade":"Watch","immediate":false,"name":"岩手県"},{"grade":"Watch","immediate":false,"name":"宮城県"},{"grade":"Watch","immediate":false,"name":"茨城県"},{"grade":"Watch","immediate":false,"name":"千葉県九十九里・外房"},{"grade":"Watch","immediate":true,"name":"千葉県内房"},{"grade":"Watch","immediate":true,"name":"伊豆諸島"}],"cancelled":false,"code":552,"id":"5d615d7cb94edb2ab8d60a0e","issue":{"source":"気象庁","time":"2016/11/22 07:26:00","type":"Focus"},"time":"2016/11/22 07:29:00","user-agent":"tsunami_checker/analyzer 20180128","ver":"20180128"},' +
            // 解除
            '{"areas":[],"cancelled":true,"code":552,"created_at":"2019/06/19 01:05:18.344","id":"5d090bbe02add629bb6fbd3a","issue":{"source":"気象庁","time":"2019/06/19 01:02:00","type":"Focus"},"time":"2019/06/19 01:04:15.957","user-agent":"tsunami_checker/analyzer 20180128","ver":"20180128"},' +
            // 津波の到達予想時刻、予想される津波の高さに対応した情報
            '{"areas":[{"firstHeight":{"arrivalTime":"2023/10/05 11:30:00"},"grade":"Watch","immediate":false,"maxHeight":{"description":"１ｍ","value":1},"name":"伊豆諸島"}],"cancelled":false,"code":552,"id":"65342a3be076e89cc7e462e5","issue":{"source":"気象庁","time":"2023/10/05 11:06:33","type":"Focus"},"time":"2023/10/22 04:44:59.896","user_agent":"jmaxml-seis-parser-go, relay, register-api","ver":"20220813"},' +
            '{"areas":[{"firstHeight":{"condition":"第１波の到達を確認"},"grade":"Watch","immediate":false,"maxHeight":{"description":"１ｍ","value":1},"name":"伊豆諸島"},{"firstHeight":{"condition":"第１波の到達を確認"},"grade":"Watch","immediate":false,"maxHeight":{"description":"１ｍ","value":1},"name":"小笠原諸島"},{"firstHeight":{"condition":"津波到達中と推測"},"grade":"Watch","immediate":true,"maxHeight":{"description":"１ｍ","value":1},"name":"高知県"}],"cancelled":false,"code":552,"id":"65342d2be076e89cc7e462fe","issue":{"source":"気象庁","time":"2023/10/09 07:44:40","type":"Focus"},"time":"2023/10/22 04:57:31.17","user_agent":"jmaxml-seis-parser-go, relay, register-api","ver":"20220813"}' +
            ']');
        final v = await instance.historyGet();

        expect(v[0], isA<JMATsunami>());
        final v0 = v[0] as JMATsunami;
        expect(v0.cancelled, isFalse);
        expect(v0.time, equals("2016/11/22 07:29:00"));
        expect(v0.issue.time, equals("2016/11/22 07:26:00"));
        expect(v0.issue.type, equals("Focus"));
        expect(v0.areas.length, equals(8));
        expect(v0.areas.where((element) => element.immediate).length, equals(2));
        expect(
            v0.areas
                .where((element) => element.grade == JMATsunamiAllOfAreasGradeEnum.warning)
                .length,
            equals(1));
        expect(v0.areas.first.grade, equals(JMATsunamiAllOfAreasGradeEnum.warning));
        expect(v0.areas.first.grade, isNot(equals(JMATsunamiAllOfAreasGradeEnum.unknown)));
        expect(v0.areas.first.immediate, isFalse);
        expect(v0.areas.first.name, equals("福島県"));
        expect(v0.areas.last.grade, equals(JMATsunamiAllOfAreasGradeEnum.watch));
        expect(v0.areas.last.immediate, isTrue);
        expect(v0.areas.last.name, equals("伊豆諸島"));
        final v1 = v[1] as JMATsunami;
        expect(v1.cancelled, isTrue);
        expect(v1.areas.length, equals(0));
        final v2 = v[2] as JMATsunami;
        expect(v2.cancelled, isFalse);
        expect(v2.areas.length, equals(1));
        expect(v2.areas.first.grade, equals(JMATsunamiAllOfAreasGradeEnum.watch));
        expect(v2.areas.first.immediate, isFalse);
        expect(v2.areas.first.name, equals("伊豆諸島"));
        expect(v2.areas.first.firstHeight.arrivalTime, equals("2023/10/05 11:30:00"));
        expect(v2.areas.first.firstHeight.condition, isNull);
        expect(v2.areas.first.maxHeight.description, "１ｍ");
        expect(v2.areas.first.maxHeight.value, 1);
        final v3 = v[3] as JMATsunami;
        expect(v3.cancelled, isFalse);
        expect(v3.areas.length, equals(3));
        expect(v3.areas[0].grade, equals(JMATsunamiAllOfAreasGradeEnum.watch));
        expect(v3.areas[0].immediate, isFalse);
        expect(v3.areas[0].name, equals("伊豆諸島"));
        expect(v3.areas[0].firstHeight.arrivalTime, isNull);
        expect(v3.areas[0].firstHeight.condition, "第１波の到達を確認");
        expect(v3.areas[0].maxHeight.description, "１ｍ");
        expect(v3.areas[0].maxHeight.value, 1);
        expect(v3.areas[1].grade, equals(JMATsunamiAllOfAreasGradeEnum.watch));
        expect(v3.areas[1].immediate, isFalse);
        expect(v3.areas[1].name, equals("小笠原諸島"));
        expect(v3.areas[1].firstHeight.arrivalTime, isNull);
        expect(v3.areas[1].firstHeight.condition, "第１波の到達を確認");
        expect(v3.areas[1].maxHeight.description, "１ｍ");
        expect(v3.areas[1].maxHeight.value, 1);
        expect(v3.areas[2].grade, equals(JMATsunamiAllOfAreasGradeEnum.watch));
        expect(v3.areas[2].immediate, isTrue);
        expect(v3.areas[2].name, equals("高知県"));
        expect(v3.areas[2].firstHeight.arrivalTime, isNull);
        expect(v3.areas[2].firstHeight.condition, "津波到達中と推測");
        expect(v3.areas[2].maxHeight.description, "１ｍ");
        expect(v3.areas[2].maxHeight.value, 1);
      });
      test('returns Areapeers', () async {
        replaceResponse(
            '[{"areas":[{"id":250,"peer":371},{"id":425,"peer":58},{"id":475,"peer":36},{"id":330,"peer":4},{"id":601,"peer":10},{"id":231,"peer":100},{"id":270,"peer":145},{"id":115,"peer":10},{"id":420,"peer":10},{"id":100,"peer":15},{"id":205,"peer":24},{"id":125,"peer":27},{"id":550,"peer":7},{"id":415,"peer":14},{"id":615,"peer":1},{"id":625,"peer":2},{"id":455,"peer":17},{"id":505,"peer":1},{"id":460,"peer":41},{"id":10,"peer":38},{"id":200,"peer":16},{"id":405,"peer":16},{"id":241,"peer":69},{"id":411,"peer":19},{"id":275,"peer":37},{"id":120,"peer":13},{"id":510,"peer":2},{"id":490,"peer":7},{"id":325,"peer":8},{"id":525,"peer":10},{"id":240,"peer":14},{"id":575,"peer":1},{"id":142,"peer":6},{"id":215,"peer":23},{"id":530,"peer":3},{"id":560,"peer":13},{"id":302,"peer":14},{"id":105,"peer":15},{"id":310,"peer":5},{"id":900,"peer":46},{"id":345,"peer":6},{"id":315,"peer":3},{"id":545,"peer":1},{"id":225,"peer":27},{"id":480,"peer":11},{"id":430,"peer":8},{"id":576,"peer":2},{"id":135,"peer":4},{"id":651,"peer":4},{"id":600,"peer":11},{"id":605,"peer":5},{"id":150,"peer":11},{"id":301,"peer":6},{"id":70,"peer":2},{"id":143,"peer":3},{"id":351,"peer":7},{"id":701,"peer":3},{"id":340,"peer":2},{"id":535,"peer":14},{"id":230,"peer":15},{"id":300,"peer":3},{"id":350,"peer":5},{"id":641,"peer":6},{"id":465,"peer":25},{"id":555,"peer":1},{"id":65,"peer":6},{"id":416,"peer":11},{"id":242,"peer":5},{"id":440,"peer":1},{"id":675,"peer":1},{"id":445,"peer":2},{"id":130,"peer":17},{"id":30,"peer":2},{"id":15,"peer":5},{"id":470,"peer":3},{"id":75,"peer":2},{"id":151,"peer":7},{"id":670,"peer":4},{"id":410,"peer":2},{"id":570,"peer":3},{"id":55,"peer":8},{"id":210,"peer":2},{"id":581,"peer":6},{"id":141,"peer":1},{"id":355,"peer":5},{"id":500,"peer":1},{"id":901,"peer":3},{"id":665,"peer":3},{"id":541,"peer":1},{"id":35,"peer":1},{"id":495,"peer":1},{"id":435,"peer":4},{"id":110,"peer":3},{"id":140,"peer":3},{"id":655,"peer":1},{"id":220,"peer":2},{"id":111,"peer":2},{"id":620,"peer":1},{"id":660,"peer":2},{"id":232,"peer":1},{"id":905,"peer":2},{"id":400,"peer":1},{"id":45,"peer":1},{"id":50,"peer":1},{"id":152,"peer":1},{"id":320,"peer":1},{"id":520,"peer":1}],"code":555,"created_at":"2020/12/04 02:10:02.758","hop":1,"id":"5fc91bea02add60b346980cc","time":"2020/12/04 02:10:02.755","uid":"2020/12/04 02:15:02","ver":"20150406"}]');
        final v = await instance.historyGet();
        expect(v[0], isA<Areapeers>());

        final v0 = v[0] as Areapeers;
        expect(v0.time, equals("2020/12/04 02:10:02.755"));
        expect(v0.areas.length, equals(107));
        expect(v0.areas.first.id, equals(250));
        expect(v0.areas.first.peer, equals(371));
        expect(v0.areas.last.id, equals(520));
        expect(v0.areas.last.peer, equals(1));
      });
      test('returns EEWDetections', () async {
        replaceResponse(
            '[{"code":554,"id":"5fba381b02add611947aef21","time":"2020/11/22 19:06:19.963","type":"Full"}]');
        final v = await instance.historyGet();
        expect(v[0], isA<EEWDetection>());
        expect((v[0] as EEWDetection).type, equals(EEWDetectionTypeEnum.full));
        expect((v[0] as EEWDetection).type, isNot(equals(EEWDetectionTypeEnum.chime)));
        expect((v[0] as EEWDetection).time, equals("2020/11/22 19:06:19.963"));
      });
      test('returns EEW', () async {
        replaceResponse(
            '[{"areas":[{"arrivalTime":"2022/08/11 00:53:59","kindCode":"10","name":"上川地方北部","pref":"北海道道北","scaleFrom":45.0,"scaleTo":45.0},{"arrivalTime":null,"kindCode":"11","name":"宗谷地方南部","pref":"北海道道北","scaleFrom":40,"scaleTo":40},{"arrivalTime":null,"kindCode":"19","name":"宗谷地方北部","pref":"北海道道北","scaleFrom":40,"scaleTo":40},{"arrivalTime":null,"kindCode":"11","name":"留萌地方中北部","pref":"北海道道北","scaleFrom":40,"scaleTo":40}],"cancelled":false,"code":556,"earthquake":{"arrivalTime":"2022/08/11 00:53:10","condition":"","hypocenter":{"depth":10,"latitude":44.9,"longitude":142.1,"magnitude":5.5,"name":"宗谷地方北部","reduceName":"北海道道北"},"originTime":"2022/08/11 00:53:00"},"id":"62ff70ca30fbd9f45f8c77e2","issue":{"eventId":"20220811005302","serial":"1","time":"2022/08/11 00:53:24"},"time":"2022/08/19 20:15:22.336","timestamp":{"convert":"2022/08/19 20:15:22.334","register":"2022/08/19 20:15:22.336"},"user_agent":"jmaxml-seis-parser-go, relay, register-api","ver":"20220813"}]');
        final v = await instance.historyGet();
        expect(v[0], isA<EEW>());
        expect((v[0] as EEW).time, equals("2022/08/19 20:15:22.336"));
        expect((v[0] as EEW).cancelled, equals(false));
        expect((v[0] as EEW).issue.eventId, equals("20220811005302"));
        expect((v[0] as EEW).issue.serial, equals("1"));
        expect((v[0] as EEW).issue.time, equals("2022/08/11 00:53:24"));
        expect((v[0] as EEW).earthquake.arrivalTime, equals("2022/08/11 00:53:10"));
        expect((v[0] as EEW).earthquake.originTime, equals("2022/08/11 00:53:00"));
        expect((v[0] as EEW).earthquake.condition, equals(""));
        expect((v[0] as EEW).earthquake.hypocenter.depth, equals(10));
        expect((v[0] as EEW).earthquake.hypocenter.latitude, equals(44.9));
        expect((v[0] as EEW).earthquake.hypocenter.longitude, equals(142.1));
        expect((v[0] as EEW).earthquake.hypocenter.magnitude, equals(5.5));
        expect((v[0] as EEW).earthquake.hypocenter.name, equals("宗谷地方北部"));
        expect((v[0] as EEW).earthquake.hypocenter.reduceName, equals("北海道道北"));

        final areas = (v[0] as EEW).areas;
        expect(areas[0].arrivalTime, equals("2022/08/11 00:53:59"));
        expect(areas[0].kindCode, equals(EEWAllOfAreasKindCodeEnum.notReached));
        expect(areas[0].pref, equals("北海道道北"));
        expect(areas[0].name, equals("上川地方北部"));
        expect(areas[0].scaleFrom, equals(EEWAllOfAreasScaleFromEnum.scale45));
        expect(areas[0].scaleTo, equals(EEWAllOfAreasScaleToEnum.scale45));
        expect(areas[1].arrivalTime, isNull);
        expect(areas[1].kindCode, equals(EEWAllOfAreasKindCodeEnum.reached));
        expect(areas[1].pref, equals("北海道道北"));
        expect(areas[1].name, equals("宗谷地方南部"));
        expect(areas[1].scaleFrom, equals(EEWAllOfAreasScaleFromEnum.scale40));
        expect(areas[1].scaleTo, equals(EEWAllOfAreasScaleToEnum.scale40));
        expect(areas[2].arrivalTime, isNull);
        expect(areas[2].kindCode, equals(EEWAllOfAreasKindCodeEnum.noPrediction));
        expect(areas[2].pref, equals("北海道道北"));
        expect(areas[2].name, equals("宗谷地方北部"));
        expect(areas[2].scaleFrom, equals(EEWAllOfAreasScaleFromEnum.scale40));
        expect(areas[2].scaleTo, equals(EEWAllOfAreasScaleToEnum.scale40));
      });
      test('returns Userquakes', () async {
        replaceResponse(
            '[{"area":275,"code":561,"created_at":"2020/12/03 23:22:52.270","hop":1,"id":"5fc8f4bc02add60b32698525","time":"2020/12/03 23:22:52.256","uid":"9999920201203232252253","ver":"20150406"},{"area":225,"code":561,"created_at":"2020/12/03 22:56:12.206","hop":1,"id":"5fc8ee7c02add60b34698095","time":"2020/12/03 22:56:12.200","uid":"9999920201203225612197","ver":"20150406"}]');
        final v = await instance.historyGet();
        expect(v[0], isA<Userquake>());
        expect((v[0] as Userquake).area, equals(275));
        expect((v[0] as Userquake).time, equals("2020/12/03 23:22:52.256"));
        expect(v[1], isA<Userquake>());
        expect((v[1] as Userquake).area, equals(225));
        expect((v[1] as Userquake).time, equals("2020/12/03 22:56:12.200"));
      });
      test('returns UserquakeEvaluations', () async {
        replaceResponse(
          '[{"area_confidences":{},"code":9611,"confidence":0,"count":1,"id":"5fc8f4bc3e0ed0bbcef64226","started_at":"2020/12/03 23:22:52.256","time":"2020/12/03 23:22:52.323","updated_at":"2020/12/03 23:22:52.256","user-agent":"userquake-aggregator 20200713","ver":"20200713"},' +
              '{"area_confidences":{"10":{"confidence":0.01366967700167026,"count":2,"display":"E"},"100":{"confidence":0.05280651073214673,"count":2,"display":"E"},"105":{"confidence":0.15121864436932927,"count":3,"display":"E"},"110":{"confidence":0.04235522214974269,"count":1,"display":"E"},"111":{"confidence":0.16942088859897075,"count":1,"display":"E"},"115":{"confidence":0.013032376046074672,"count":1,"display":"E"},"120":{"confidence":0.06674156217535211,"count":3,"display":"E"},"125":{"confidence":-1,"count":1,"display":"F"},"231":{"confidence":-1,"count":2,"display":"F"},"241":{"confidence":-1,"count":1,"display":"F"},"75":{"confidence":0.2197274006935146,"count":1,"display":"D"}},"code":9611,"confidence":0.98052,"count":18,"id":"5fc5796b3e0ed0bbcef64215","started_at":"2020/12/01 07:56:37.930","time":"2020/12/01 07:59:55.572","updated_at":"2020/12/01 07:59:55.525","user-agent":"userquake-aggregator 20200713","ver":"20200713"}]',
        );
        final v = await instance.historyGet();

        expect(v[0], isA<UserquakeEvaluation>());
        final v0 = v[0] as UserquakeEvaluation;
        expect(v0.confidence, 0);
        expect(v0.count, 1);
        expect(v0.startedAt, "2020/12/03 23:22:52.256");
        expect(v0.areaConfidences, isEmpty);

        expect(v[1], isA<UserquakeEvaluation>());
        final v1 = v[1] as UserquakeEvaluation;
        expect(v1.confidence, 0.98052);
        expect(v1.count, 18);
        expect(v1.startedAt, "2020/12/01 07:56:37.930");
        expect(v1.areaConfidences.length, 11);
        expect((v1.areaConfidences["10"].confidence - 0.01366967700167026).abs(), lessThan(0.01));
        expect(v1.areaConfidences["10"].count, equals(2));
        expect(v1.areaConfidences["10"].display, equals("E"));
        expect(v1.areaConfidences["125"].confidence, equals(-1));
        expect(v1.areaConfidences["125"].count, equals(1));
        expect(v1.areaConfidences["125"].display, equals("F"));
      });
    });
  });
}
