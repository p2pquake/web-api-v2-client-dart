# p2pquake_api_v2.model.JMAQuakeAllOfEarthquake

## Load the model package
```dart
import 'package:p2pquake_api_v2/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time** | **String** | 発生日時 | 
**hypocenter** | [**JMAQuakeAllOfEarthquakeHypocenter**](JMAQuakeAllOfEarthquakeHypocenter.md) |  | [optional] 
**maxScale** | **int** | 最大震度。震度情報が存在しない場合は-1となります。 | [optional] 
**domesticTsunami** | **String** | 国内への津波の有無 | [optional] 
**foreignTsunami** | **String** | 海外での津波の有無 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


