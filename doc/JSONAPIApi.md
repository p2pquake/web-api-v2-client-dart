# p2pquake_api_v2.api.JSONAPIApi

## Load the API package
```dart
import 'package:p2pquake_api_v2/api.dart';
```

All URIs are relative to *https://api.p2pquake.net/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jmaQuakeGet**](JSONAPIApi.md#jmaQuakeGet) | **GET** /jma/quake | 地震情報リスト
[**jmaQuakeIdGet**](JSONAPIApi.md#jmaQuakeIdGet) | **GET** /jma/quake/{id} | 地震情報
[**jmaTsunamiGet**](JSONAPIApi.md#jmaTsunamiGet) | **GET** /jma/tsunami | 津波予報リスト
[**jmaTsunamiIdGet**](JSONAPIApi.md#jmaTsunamiIdGet) | **GET** /jma/tsunami/{id} | 津波予報


# **jmaQuakeGet**
> List<JMAQuake> jmaQuakeGet(limit, offset, order, sinceDate, untilDate, quakeType, minMagnitude, maxMagnitude, minScale, maxScale, prefectures[])

地震情報リスト

地震情報を返却します。デフォルトは新しい順に最大10件です。 データは2015年1月10日から提供しています。 

### Example 
```dart
import 'package:p2pquake_api_v2/api.dart';

final api_instance = JSONAPIApi();
final limit = 56; // int | 返却件数 (1〜100、デフォルトは10)
final offset = 56; // int | 読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。
final order = 56; // int | 並び順。1は昇順（古い順）、-1は降順（新しい順）です。デフォルトは降順。
final sinceDate = sinceDate_example; // String | 指定日かそれ以降 (yyyyMMdd形式)
final untilDate = untilDate_example; // String | 指定日かそれ以前 (yyyyMMdd形式)
final quakeType = quakeType_example; // String | 地震情報の種類。値はScalePrompt(震度速報)、Destination(震源に関する情報)、ScaleAndDestination(震度・震源に関する情報)、DetailScale(各地の震度に関する情報)、Foreign(遠地地震に関する情報)、Other(その他の情報)です。
final minMagnitude = 8.14; // num | マグニチュード下限
final maxMagnitude = 8.14; // num | マグニチュード上限
final minScale = 56; // int | 最大震度の下限。値は10(震度1)、20(震度2)、30(震度3)、40(震度4)、45(震度5弱)、50(震度5強)、55(震度6弱)、60(震度6強)、70(震度7)です。
final maxScale = 56; // int | 最大震度の上限。値は10(震度1)、20(震度2)、30(震度3)、40(震度4)、45(震度5弱)、50(震度5強)、55(震度6弱)、60(震度6強)、70(震度7)です。
final prefectures[] = []; // List<Object> | 各都道府県の最低震度。 \"兵庫県,10\" のように指定します。

try { 
    final result = api_instance.jmaQuakeGet(limit, offset, order, sinceDate, untilDate, quakeType, minMagnitude, maxMagnitude, minScale, maxScale, prefectures[]);
    print(result);
} catch (e) {
    print('Exception when calling JSONAPIApi->jmaQuakeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| 返却件数 (1〜100、デフォルトは10) | [optional] 
 **offset** | **int**| 読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。 | [optional] 
 **order** | **int**| 並び順。1は昇順（古い順）、-1は降順（新しい順）です。デフォルトは降順。 | [optional] 
 **sinceDate** | **String**| 指定日かそれ以降 (yyyyMMdd形式) | [optional] 
 **untilDate** | **String**| 指定日かそれ以前 (yyyyMMdd形式) | [optional] 
 **quakeType** | **String**| 地震情報の種類。値はScalePrompt(震度速報)、Destination(震源に関する情報)、ScaleAndDestination(震度・震源に関する情報)、DetailScale(各地の震度に関する情報)、Foreign(遠地地震に関する情報)、Other(その他の情報)です。 | [optional] 
 **minMagnitude** | **num**| マグニチュード下限 | [optional] 
 **maxMagnitude** | **num**| マグニチュード上限 | [optional] 
 **minScale** | **int**| 最大震度の下限。値は10(震度1)、20(震度2)、30(震度3)、40(震度4)、45(震度5弱)、50(震度5強)、55(震度6弱)、60(震度6強)、70(震度7)です。 | [optional] 
 **maxScale** | **int**| 最大震度の上限。値は10(震度1)、20(震度2)、30(震度3)、40(震度4)、45(震度5弱)、50(震度5強)、55(震度6弱)、60(震度6強)、70(震度7)です。 | [optional] 
 **prefectures[]** | [**List<Object>**](Object.md)| 各都道府県の最低震度。 \"兵庫県,10\" のように指定します。 | [optional] [default to const []]

### Return type

[**List<JMAQuake>**](JMAQuake.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jmaQuakeIdGet**
> JMAQuake jmaQuakeIdGet(id)

地震情報

### Example 
```dart
import 'package:p2pquake_api_v2/api.dart';

final api_instance = JSONAPIApi();
final id = id_example; // String | ID

try { 
    final result = api_instance.jmaQuakeIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling JSONAPIApi->jmaQuakeIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 

### Return type

[**JMAQuake**](JMAQuake.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jmaTsunamiGet**
> List<JMATsunami> jmaTsunamiGet(limit, offset, order, sinceDate, untilDate)

津波予報リスト

津波予報を返却します。デフォルトは新しい順に最大10件です。 データは2016年11月22日から提供しています。 

### Example 
```dart
import 'package:p2pquake_api_v2/api.dart';

final api_instance = JSONAPIApi();
final limit = 56; // int | 返却件数 (1〜100、デフォルトは10)
final offset = 56; // int | 読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。
final order = 56; // int | 並び順。1は昇順（古い順）、-1は降順（新しい順）です。デフォルトは降順。
final sinceDate = sinceDate_example; // String | 指定日かそれ以降 (yyyyMMdd形式)
final untilDate = untilDate_example; // String | 指定日かそれ以前 (yyyyMMdd形式)

try { 
    final result = api_instance.jmaTsunamiGet(limit, offset, order, sinceDate, untilDate);
    print(result);
} catch (e) {
    print('Exception when calling JSONAPIApi->jmaTsunamiGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| 返却件数 (1〜100、デフォルトは10) | [optional] 
 **offset** | **int**| 読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。 | [optional] 
 **order** | **int**| 並び順。1は昇順（古い順）、-1は降順（新しい順）です。デフォルトは降順。 | [optional] 
 **sinceDate** | **String**| 指定日かそれ以降 (yyyyMMdd形式) | [optional] 
 **untilDate** | **String**| 指定日かそれ以前 (yyyyMMdd形式) | [optional] 

### Return type

[**List<JMATsunami>**](JMATsunami.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jmaTsunamiIdGet**
> JMATsunami jmaTsunamiIdGet(id)

津波予報

### Example 
```dart
import 'package:p2pquake_api_v2/api.dart';

final api_instance = JSONAPIApi();
final id = id_example; // String | ID

try { 
    final result = api_instance.jmaTsunamiIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling JSONAPIApi->jmaTsunamiIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 

### Return type

[**JMATsunami**](JMATsunami.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

