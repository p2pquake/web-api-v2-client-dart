# p2pquake_api_v2.model.EEW

## Load the model package
```dart
import 'package:p2pquake_api_v2/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | 情報を一意に識別するID | 
**code** | [**Object**](.md) | 情報コード。常に556です。 | 
**time** | **String** | 受信日時。形式は `2006/01/02 15:04:05.999` です。 | 
**test** | **bool** | テストかどうか。 | [optional] 
**earthquake** | [**EEWAllOfEarthquake**](EEWAllOfEarthquake.md) |  | [optional] 
**issue** | [**EEWAllOfIssue**](EEWAllOfIssue.md) |  | 
**cancelled** | **bool** | 取消 | 
**areas** | [**List<EEWAllOfAreas>**](EEWAllOfAreas.md) | 細分区域 | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


