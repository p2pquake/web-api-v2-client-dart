# p2pquake_api_v2.model.JMAQuakeAllOfEarthquakeHypocenter

## Load the model package
```dart
import 'package:p2pquake_api_v2/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | 名称 | [optional] 
**latitude** | **num** | 緯度。震源情報が存在しない場合は-200となります。 | [optional] 
**longitude** | **num** | 経度。震源情報が存在しない場合は-200となります。 | [optional] 
**depth** | **int** | 深さ(km)。「ごく浅い」は0、震源情報が存在しない場合は-1となります。 | [optional] 
**magnitude** | **num** | マグニチュード。震源情報が存在しない場合は-1となります。 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


