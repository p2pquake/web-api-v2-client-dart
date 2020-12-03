//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

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
        headers: {"Content-type": "application/json; charset=utf-8"},
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
    });
  });
}
