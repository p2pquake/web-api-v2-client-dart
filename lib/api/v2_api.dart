//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class V2Api {
  V2Api([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /**
   * P2P地震情報 JSON API (v2)
   *
   * P2P地震情報の各種情報を返却します。   `offset` パラメタは利用可能ですが、 1 週間以上古い情報は取得できない場合があります。
   *
   * Note: This method returns the HTTP [Response].
   *
   * Parameters:
   *
   * * [List<int>] codes:
   *   取得したい情報の情報コード (デフォルトはすべて)。値は551(地震情報)、552(津波予報)、554(緊急地震速報 発表検出)、555(各地域ピア数)、561(地震感知情報)、9611(地震感知情報 解析結果)です。
   *
   * * [int] limit:
   *   返却件数 (1〜100、デフォルトは10)
   *
   * * [int] offset:
   *   読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。
   */
  Future<Response> historyGetWithHttpInfo(
      {List<int> codes, int limit, int offset}) async {
    // Verify required params are set.

    final path = '/history'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (codes != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('multi', 'codes', codes));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'offset', offset));
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

  /// P2P地震情報 JSON API (v2)
  ///
  /// P2P地震情報の各種情報を返却します。   `offset` パラメタは利用可能ですが、 1 週間以上古い情報は取得できない場合があります。
  ///
  /// Parameters:
  ///
  /// * [List<int>] codes:
  ///   取得したい情報の情報コード (デフォルトはすべて)。値は551(地震情報)、552(津波予報)、554(緊急地震速報 発表検出)、555(各地域ピア数)、561(地震感知情報)、9611(地震感知情報 解析結果)です。
  ///
  /// * [int] limit:
  ///   返却件数 (1〜100、デフォルトは10)
  ///
  /// * [int] offset:
  ///   読み飛ばす件数 (0以上、デフォルトは0)。例えば、 limit=100&offset=200 とすると、201件目から100件を返却します。
  Future<List<BasicData>> historyGet(
      {List<int> codes, int limit, int offset}) async {
    final response = await historyGetWithHttpInfo(
        codes: codes, limit: limit, offset: offset);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(
              _decodeBodyBytes(response), 'List<BasicData>') as List)
          .map((item) => item as BasicData)
          .toList(growable: false);
    }
    return null;
  }

  // /// P2P地震情報 WebSocket API
  // ///
  // /// P2P地震情報の各種情報をリアルタイムに配信します。 WebSocket プロトコルでの接続が必要です。 - テキストフレーム (opcode: 1) で JSON オブジェクトを配信します。 1 フレーム毎にスキーマで指定したいずれかの情報が含まれています。 - 同一の情報を複数回配信する可能性があります。 `id` を用いて重複を取り除くことを推奨します。 - 情報は P2P地震情報 JSON API (v2) と全く同じものです。過去の情報の取得には JSON API をご利用ください。
  // ///
  // /// Note: This method returns the HTTP [Response].
  // Future wsGetWithHttpInfo() async {
  //   final path = '/ws'.replaceAll('{format}', 'json');

  //   Object postBody;

  //   final queryParams = <QueryParam>[];
  //   final headerParams = <String, String>{};
  //   final formParams = <String, String>{};

  //   final contentTypes = <String>[];
  //   final nullableContentType =
  //       contentTypes.isNotEmpty ? contentTypes[0] : null;
  //   final authNames = <String>[];

  //   if (nullableContentType != null &&
  //       nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
  //     bool hasFields = false;
  //     final mp = MultipartRequest(null, null);
  //     if (hasFields) {
  //       postBody = mp;
  //     }
  //   } else {}

  //   return await apiClient.invokeAPI(
  //     path,
  //     'GET',
  //     queryParams,
  //     postBody,
  //     headerParams,
  //     formParams,
  //     nullableContentType,
  //     authNames,
  //   );
  // }

  // /// P2P地震情報 WebSocket API
  // ///
  // /// P2P地震情報の各種情報をリアルタイムに配信します。 WebSocket プロトコルでの接続が必要です。 - テキストフレーム (opcode: 1) で JSON オブジェクトを配信します。 1 フレーム毎にスキーマで指定したいずれかの情報が含まれています。 - 同一の情報を複数回配信する可能性があります。 `id` を用いて重複を取り除くことを推奨します。 - 情報は P2P地震情報 JSON API (v2) と全く同じものです。過去の情報の取得には JSON API をご利用ください。
  // Future wsGet() async {
  //   final response = await wsGetWithHttpInfo();
  //   if (response.statusCode >= HttpStatus.badRequest) {
  //     throw ApiException(response.statusCode, _decodeBodyBytes(response));
  //   }
  // }
}
