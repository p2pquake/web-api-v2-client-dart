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

      test('returns JMAQuakes', () async {});
      test('returns JMATsunamis', () async {
        replaceResponse(
            '[{"areas":[{"grade":"Warning","immediate":false,"name":"福島県"},{"grade":"Watch","immediate":false,"name":"青森県太平洋沿岸"},{"grade":"Watch","immediate":false,"name":"岩手県"},{"grade":"Watch","immediate":false,"name":"宮城県"},{"grade":"Watch","immediate":false,"name":"茨城県"},{"grade":"Watch","immediate":false,"name":"千葉県九十九里・外房"},{"grade":"Watch","immediate":true,"name":"千葉県内房"},{"grade":"Watch","immediate":true,"name":"伊豆諸島"}],"cancelled":false,"code":552,"id":"5d615d7cb94edb2ab8d60a0e","issue":{"source":"気象庁","time":"2016/11/22 07:26:00","type":"Focus"},"time":"2016/11/22 07:29:00","user-agent":"tsunami_checker/analyzer 20180128","ver":"20180128"},' +
                '{"areas":[],"cancelled":true,"code":552,"created_at":"2019/06/19 01:05:18.344","id":"5d090bbe02add629bb6fbd3a","issue":{"source":"気象庁","time":"2019/06/19 01:02:00","type":"Focus"},"time":"2019/06/19 01:04:15.957","user-agent":"tsunami_checker/analyzer 20180128","ver":"20180128"}]');
        final v = await instance.historyGet();

        expect(v[0], isA<JMATsunami>());
        final v0 = v[0] as JMATsunami;
        expect(v0.cancelled, isFalse);
        expect(v0.time, equals("2016/11/22 07:29:00"));
        expect(v0.issue.time, equals("2016/11/22 07:26:00"));
        expect(v0.areas.length, equals(8));
        expect(v0.areas.where((element) => element.immediate).length, equals(2));
        expect(v0.areas.where((element) => element.grade == JMATsunamiAllOfAreasGradeEnum.warning).length, equals(1));
        expect(v0.areas.first.grade, equals(JMATsunamiAllOfAreasGradeEnum.warning));
        expect(v0.areas.first.immediate, isFalse);
        expect(v0.areas.first.name, equals("福島県"));
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
        expect((v[0] as EEWDetection).time, equals("2020/11/22 19:06:19.963"));
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
