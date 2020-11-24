//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class JsonApi {
  JsonApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 地震情報リスト
  ///
  /// 地震情報を返却します。デフォルトは新しい順に最大10件です。 データは2015年1月10日から提供しています。
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   返却件数 (1〜100、デフォルトは10)
  ///
  /// * [int] offset:
  ///   読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。
  ///
  /// * [int] order:
  ///   並び順。1は昇順（古い順）、-1は降順（新しい順）です。デフォルトは降順。
  ///
  /// * [String] sinceDate:
  ///   指定日かそれ以降 (yyyyMMdd形式)
  ///
  /// * [String] untilDate:
  ///   指定日かそれ以前 (yyyyMMdd形式)
  ///
  /// * [String] quakeType:
  ///   地震情報の種類。値はScalePrompt(震度速報)、Destination(震源に関する情報)、ScaleAndDestination(震度・震源に関する情報)、DetailScale(各地の震度に関する情報)、Foreign(遠地地震に関する情報)、Other(その他の情報)です。
  ///
  /// * [num] minMagnitude:
  ///   マグニチュード下限
  ///
  /// * [num] maxMagnitude:
  ///   マグニチュード上限
  ///
  /// * [int] minScale:
  ///   最大震度の下限。値は10(震度1)、20(震度2)、30(震度3)、40(震度4)、45(震度5弱)、50(震度5強)、55(震度6弱)、60(震度6強)、70(震度7)です。
  ///
  /// * [int] maxScale:
  ///   最大震度の上限。値は10(震度1)、20(震度2)、30(震度3)、40(震度4)、45(震度5弱)、50(震度5強)、55(震度6弱)、60(震度6強)、70(震度7)です。
  ///
  /// * [List<Object>] prefectures:
  ///   各都道府県の最低震度。 \"兵庫県,10\" のように指定します。
  Future<Response> jmaQuakeGetWithHttpInfo(
      {int limit,
      int offset,
      int order,
      String sinceDate,
      String untilDate,
      String quakeType,
      num minMagnitude,
      num maxMagnitude,
      int minScale,
      int maxScale,
      List<Object> prefectures}) async {
    // Verify required params are set.

    final path = '/jma/quake'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'order', order));
    }
    if (sinceDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'since_date', sinceDate));
    }
    if (untilDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'until_date', untilDate));
    }
    if (quakeType != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'quake_type', quakeType));
    }
    if (minMagnitude != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          '', 'min_magnitude', minMagnitude));
    }
    if (maxMagnitude != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          '', 'max_magnitude', maxMagnitude));
    }
    if (minScale != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'min_scale', minScale));
    }
    if (maxScale != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'max_scale', maxScale));
    }
    if (prefectures != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          'multi', 'prefectures[]', prefectures));
    }

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// 地震情報リスト
  ///
  /// 地震情報を返却します。デフォルトは新しい順に最大10件です。 データは2015年1月10日から提供しています。
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   返却件数 (1〜100、デフォルトは10)
  ///
  /// * [int] offset:
  ///   読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。
  ///
  /// * [int] order:
  ///   並び順。1は昇順（古い順）、-1は降順（新しい順）です。デフォルトは降順。
  ///
  /// * [String] sinceDate:
  ///   指定日かそれ以降 (yyyyMMdd形式)
  ///
  /// * [String] untilDate:
  ///   指定日かそれ以前 (yyyyMMdd形式)
  ///
  /// * [String] quakeType:
  ///   地震情報の種類。値はScalePrompt(震度速報)、Destination(震源に関する情報)、ScaleAndDestination(震度・震源に関する情報)、DetailScale(各地の震度に関する情報)、Foreign(遠地地震に関する情報)、Other(その他の情報)です。
  ///
  /// * [num] minMagnitude:
  ///   マグニチュード下限
  ///
  /// * [num] maxMagnitude:
  ///   マグニチュード上限
  ///
  /// * [int] minScale:
  ///   最大震度の下限。値は10(震度1)、20(震度2)、30(震度3)、40(震度4)、45(震度5弱)、50(震度5強)、55(震度6弱)、60(震度6強)、70(震度7)です。
  ///
  /// * [int] maxScale:
  ///   最大震度の上限。値は10(震度1)、20(震度2)、30(震度3)、40(震度4)、45(震度5弱)、50(震度5強)、55(震度6弱)、60(震度6強)、70(震度7)です。
  ///
  /// * [List<Object>] prefectures[]:
  ///   各都道府県の最低震度。 \"兵庫県,10\" のように指定します。
  Future<List<JMAQuake>> jmaQuakeGet(
      {int limit,
      int offset,
      int order,
      String sinceDate,
      String untilDate,
      String quakeType,
      num minMagnitude,
      num maxMagnitude,
      int minScale,
      int maxScale,
      List<Object> prefectures}) async {
    final response = await jmaQuakeGetWithHttpInfo(
        limit: limit,
        offset: offset,
        order: order,
        sinceDate: sinceDate,
        untilDate: untilDate,
        quakeType: quakeType,
        minMagnitude: minMagnitude,
        maxMagnitude: maxMagnitude,
        minScale: minScale,
        maxScale: maxScale,
        prefectures: prefectures);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(
              _decodeBodyBytes(response), 'List<JMAQuake>') as List)
          .map((item) => item as JMAQuake)
          .toList(growable: false);
    }
    return null;
  }

  /// 地震情報
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID
  Future<Response> jmaQuakeIdGetWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/jma/quake/{id}'
        .replaceAll('{format}', 'json')
        .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// 地震情報
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID
  Future<JMAQuake> jmaQuakeIdGet(String id) async {
    final response = await jmaQuakeIdGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'JMAQuake')
          as JMAQuake;
    }
    return null;
  }

  /// 津波予報リスト
  ///
  /// 津波予報を返却します。デフォルトは新しい順に最大10件です。 データは2016年11月22日から提供しています。
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   返却件数 (1〜100、デフォルトは10)
  ///
  /// * [int] offset:
  ///   読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。
  ///
  /// * [int] order:
  ///   並び順。1は昇順（古い順）、-1は降順（新しい順）です。デフォルトは降順。
  ///
  /// * [String] sinceDate:
  ///   指定日かそれ以降 (yyyyMMdd形式)
  ///
  /// * [String] untilDate:
  ///   指定日かそれ以前 (yyyyMMdd形式)
  Future<Response> jmaTsunamiGetWithHttpInfo(
      {int limit,
      int offset,
      int order,
      String sinceDate,
      String untilDate}) async {
    // Verify required params are set.

    final path = '/jma/tsunami'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'order', order));
    }
    if (sinceDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'since_date', sinceDate));
    }
    if (untilDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'until_date', untilDate));
    }

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// 津波予報リスト
  ///
  /// 津波予報を返却します。デフォルトは新しい順に最大10件です。 データは2016年11月22日から提供しています。
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   返却件数 (1〜100、デフォルトは10)
  ///
  /// * [int] offset:
  ///   読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。
  ///
  /// * [int] order:
  ///   並び順。1は昇順（古い順）、-1は降順（新しい順）です。デフォルトは降順。
  ///
  /// * [String] sinceDate:
  ///   指定日かそれ以降 (yyyyMMdd形式)
  ///
  /// * [String] untilDate:
  ///   指定日かそれ以前 (yyyyMMdd形式)
  Future<List<JMATsunami>> jmaTsunamiGet(
      {int limit,
      int offset,
      int order,
      String sinceDate,
      String untilDate}) async {
    final response = await jmaTsunamiGetWithHttpInfo(
        limit: limit,
        offset: offset,
        order: order,
        sinceDate: sinceDate,
        untilDate: untilDate);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(
              _decodeBodyBytes(response), 'List<JMATsunami>') as List)
          .map((item) => item as JMATsunami)
          .toList(growable: false);
    }
    return null;
  }

  /// 津波予報
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID
  Future<Response> jmaTsunamiIdGetWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/jma/tsunami/{id}'
        .replaceAll('{format}', 'json')
        .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// 津波予報
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID
  Future<JMATsunami> jmaTsunamiIdGet(String id) async {
    final response = await jmaTsunamiIdGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'JMATsunami')
          as JMATsunami;
    }
    return null;
  }
}
