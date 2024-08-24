# web-api-v2-client-dart

[P2P 地震情報 JSON API v2](https://www.p2pquake.net/json_api_v2/) の Dart クライアント実装です。

大半のコードは [OpenAPI Generator](https://openapi-generator.tech) により生成しています。

## 環境

Dart 2.0 またはそれ以降

## 使用方法

pubspec.yaml にパッケージを追加して使用してください。

```yaml
dependencies:
  p2pquake_api_v2:
    git: https://github.com/p2pquake/web-api-v2-client-dart
```

```dart
import 'package:p2pquake_api_v2/api.dart';

main(List<String> args) async {
  print(await V2Api().historyGet());
  for (var item in [551, 552, 554, 555, 556, 561, 9611]) {
    print(await V2Api().historyGet(codes: [item], limit: 100));
  }

  print(await JsonApi().jmaQuakeGet(limit: 100));
  print(await JsonApi().jmaTsunamiGet(limit: 100));
}
```

## WIP: ドキュメント

ドキュメントは未整備です。 [P2P 地震情報 JSON API v2](https://www.p2pquake.net/json_api_v2/) 仕様書と実装（ソースコード）をご覧ください。

### API エンドポイント

All URIs are relative to *https://api.p2pquake.net/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*JsonApi* | [**jmaQuakeGet**](doc//JsonApi.md#jmaquakeget) | **GET** /jma/quake | 地震情報リスト
*JsonApi* | [**jmaQuakeIdGet**](doc//JsonApi.md#jmaquakeidget) | **GET** /jma/quake/{id} | 地震情報
*JsonApi* | [**jmaTsunamiGet**](doc//JsonApi.md#jmatsunamiget) | **GET** /jma/tsunami | 津波予報リスト
*JsonApi* | [**jmaTsunamiIdGet**](doc//JsonApi.md#jmatsunamiidget) | **GET** /jma/tsunami/{id} | 津波予報
*V2Api* | [**historyGet**](doc//V2Api.md#historyget) | **GET** /history | P2P地震情報 JSON API (v2)

### モデル

 - [Areapeers](doc//Areapeers.md)
 - [AreapeersAllOf](doc//AreapeersAllOf.md)
 - [AreapeersAllOfAreas](doc//AreapeersAllOfAreas.md)
 - [BasicData](doc//BasicData.md)
 - [EEW](doc//EEW.md)
 - [EEWAllOf](doc//EEWAllOf.md)
 - [EEWAllOfAreas](doc//EEWAllOfAreas.md)
 - [EEWAllOfEarthquake](doc//EEWAllOfEarthquake.md)
 - [EEWAllOfEarthquakeHypocenter](doc//EEWAllOfEarthquakeHypocenter.md)
 - [EEWAllOfIssue](doc//EEWAllOfIssue.md)
 - [EEWDetection](doc//EEWDetection.md)
 - [EEWDetectionAllOf](doc//EEWDetectionAllOf.md)
 - [JMAQuake](doc//JMAQuake.md)
 - [JMAQuakeAllOf](doc//JMAQuakeAllOf.md)
 - [JMAQuakeAllOfComments](doc//JMAQuakeAllOfComments.md)
 - [JMAQuakeAllOfEarthquake](doc//JMAQuakeAllOfEarthquake.md)
 - [JMAQuakeAllOfEarthquakeHypocenter](doc//JMAQuakeAllOfEarthquakeHypocenter.md)
 - [JMAQuakeAllOfIssue](doc//JMAQuakeAllOfIssue.md)
 - [JMAQuakeAllOfPoints](doc//JMAQuakeAllOfPoints.md)
 - [JMATsunami](doc//JMATsunami.md)
 - [JMATsunamiAllOf](doc//JMATsunamiAllOf.md)
 - [JMATsunamiAllOfAreas](doc//JMATsunamiAllOfAreas.md)
 - [JMATsunamiAllOfFirstHeight](doc//JMATsunamiAllOfFirstHeight.md)
 - [JMATsunamiAllOfIssue](doc//JMATsunamiAllOfIssue.md)
 - [JMATsunamiAllOfMaxHeight](doc//JMATsunamiAllOfMaxHeight.md)
 - [Userquake](doc//Userquake.md)
 - [UserquakeAllOf](doc//UserquakeAllOf.md)
 - [UserquakeEvaluation](doc//UserquakeEvaluation.md)
 - [UserquakeEvaluationAllOf](doc//UserquakeEvaluationAllOf.md)
 - [UserquakeEvaluationAllOfAreaConfidences](doc//UserquakeEvaluationAllOfAreaConfidences.md)

## ライセンス

[MIT License](./LICENSE)