# p2pquake_api_v2.model.JMATsunamiAllOf

## Load the model package
```dart
import 'package:p2pquake_api_v2/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | [**Object**](.md) | 情報コード。常に552です。 | [optional] 
**cancelled** | **bool** | 津波予報が解除されたかどうか。trueの場合、areasは空配列です。 | 
**issue** | [**JMATsunamiAllOfIssue**](JMATsunamiAllOfIssue.md) |  | 
**areas** | [**List<JMATsunamiAllOfAreas>**](JMATsunamiAllOfAreas.md) | 津波予報の詳細 | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


