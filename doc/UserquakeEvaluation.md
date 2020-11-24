# p2pquake_api_v2.model.UserquakeEvaluation

## Load the model package
```dart
import 'package:p2pquake_api_v2/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | 情報を一意に識別するID | 
**code** | [**Object**](.md) | 情報コード。常に9611です。 | 
**time** | **String** | 評価日時。形式は `2006/01/02 15:04:05.999` です。 | 
**count** | **int** | 件数 | 
**confidence** | **num** | P2P地震情報 Beta3 における信頼度（0～1）   0: 非表示、0.97015: レベル1、0.96774: レベル2、0.97024: レベル3、0.98052: レベル4。   値は適合率 (precision) です。  | 
**startedAt** | **String** | 開始日時。地震感知情報のイベントを一意に識別するキーとなります。 形式は `2006/01/02 15:04:05.999` です。  | [optional] 
**updatedAt** | **String** | 更新日時。形式は `2006/01/02 15:04:05.999` です。 | [optional] 
**areaConfidences** | [**Map<String, UserquakeEvaluationAllOfAreaConfidences>**](UserquakeEvaluationAllOfAreaConfidences.md) | 地域ごとの信頼度情報 | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


