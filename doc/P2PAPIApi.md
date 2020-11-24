# p2pquake_api_v2.api.P2PAPIApi

## Load the API package
```dart
import 'package:p2pquake_api_v2/api.dart';
```

All URIs are relative to *https://api.p2pquake.net/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**historyGet**](P2PAPIApi.md#historyGet) | **GET** /history | P2P地震情報 JSON API (v2)
[**wsGet**](P2PAPIApi.md#wsGet) | **GET** /ws | P2P地震情報 WebSocket API


# **historyGet**
> List<AnyOf<JMAQuake,JMATsunami,Areapeers,EEWDetection,Userquake,UserquakeEvaluation>> historyGet(codes, limit, offset)

P2P地震情報 JSON API (v2)

P2P地震情報の各種情報を返却します。   `offset` パラメタは利用可能ですが、 1 週間以上古い情報は取得できない場合があります。   

### Example 
```dart
import 'package:p2pquake_api_v2/api.dart';

final api_instance = P2PAPIApi();
final codes = []; // List<int> | 取得したい情報の情報コード (デフォルトはすべて)。値は551(地震情報)、552(津波予報)、554(緊急地震速報 発表検出)、555(各地域ピア数)、561(地震感知情報)、9611(地震感知情報 解析結果)です。
final limit = 56; // int | 返却件数 (1〜100、デフォルトは10)
final offset = 56; // int | 読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。

try { 
    final result = api_instance.historyGet(codes, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling P2PAPIApi->historyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codes** | [**List<int>**](int.md)| 取得したい情報の情報コード (デフォルトはすべて)。値は551(地震情報)、552(津波予報)、554(緊急地震速報 発表検出)、555(各地域ピア数)、561(地震感知情報)、9611(地震感知情報 解析結果)です。 | [optional] [default to const []]
 **limit** | **int**| 返却件数 (1〜100、デフォルトは10) | [optional] 
 **offset** | **int**| 読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。 | [optional] 

### Return type

[**List<AnyOf<JMAQuake,JMATsunami,Areapeers,EEWDetection,Userquake,UserquakeEvaluation>>**](AnyOf<JMAQuake,JMATsunami,Areapeers,EEWDetection,Userquake,UserquakeEvaluation>.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wsGet**
> wsGet()

P2P地震情報 WebSocket API

P2P地震情報の各種情報をリアルタイムに配信します。 WebSocket プロトコルでの接続が必要です。 - テキストフレーム (opcode: 1) で JSON オブジェクトを配信します。 1 フレーム毎にスキーマで指定したいずれかの情報が含まれています。 - 同一の情報を複数回配信する可能性があります。 `id` を用いて重複を取り除くことを推奨します。 - 情報は P2P地震情報 JSON API (v2) と全く同じものです。過去の情報の取得には JSON API をご利用ください。 

### Example 
```dart
import 'package:p2pquake_api_v2/api.dart';

final api_instance = P2PAPIApi();

try { 
    api_instance.wsGet();
} catch (e) {
    print('Exception when calling P2PAPIApi->wsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

