# p2pquake_api_v2.model.EEWAllOfEarthquakeHypocenter

## Load the model package
```dart
import 'package:p2pquake_api_v2/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | 震央地名 | [optional] 
**reduceName** | **String** | 短縮用震央地名 | [optional] 
**latitude** | **num** | 緯度。震源情報が存在しない場合は-200となります。 | [optional] 
**longitude** | **num** | 経度。震源情報が存在しない場合は-200となります。 | [optional] 
**depth** | **num** | 深さ(km)。震源情報が存在しない場合は-1となります。   システムの都合で小数点が付きますが整数部のみ有効です。  | [optional] 
**magnitude** | **num** | マグニチュード。震源情報が存在しない場合は-1となります。 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


