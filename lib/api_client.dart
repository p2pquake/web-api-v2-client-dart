//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of p2pquake_v2_api.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.p2pquake.net/v2'}) {}

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  dynamic deserialize(String json, String targetType, {bool? growable}) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    return targetType == 'String'
        ? json
        : _deserialize(jsonDecode(json), targetType,
            growable: true == growable);
  }

  String serialize(Object? obj) => obj == null ? '' : json.encode(obj);

  T? getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don’t use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    Iterable<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams as List<QueryParam>, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
        .where((param) => param.value != null)
        .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';

    final url = '$basePath$path$queryString';

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn’t a 'multipart/form-data'.
      if (body is MultipartFile &&
          (nullableContentType == null ||
              !nullableContentType
                  .toLowerCase()
                  .startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, Uri.parse(url));
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              onError: (error, trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, Uri.parse(url));
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
          ? formParams
          : serialize(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await _client.post(
            Uri.parse(url),
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await _client.put(
            Uri.parse(url),
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await _client.delete(
            Uri.parse(url),
            headers: nullableHeaderParams,
          );
        case 'PATCH':
          return await _client.patch(
            Uri.parse(url),
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await _client.head(
            Uri.parse(url),
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await _client.get(
            Uri.parse(url),
            headers: nullableHeaderParams,
          );
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        e,
        trace,
      );
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        e,
        trace,
      );
    } on IOException catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        e,
        trace,
      );
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        e,
        trace,
      );
    } on Exception catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        e,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  dynamic _deserialize(dynamic value, String? targetType, {bool? growable}) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
          break;
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Areapeers':
          return Areapeers.fromJson(value);
        case 'AreapeersAllOf':
          return AreapeersAllOf.fromJson(value);
        case 'AreapeersAllOfAreas':
          return AreapeersAllOfAreas.fromJson(value);
        case 'BasicData':
          var data = BasicData.fromJson(value);
          if (data.code == 551) {
            return JMAQuake.fromJson(value);
          } else if (data.code == 552) {
            return JMATsunami.fromJson(value);
          } else if (data.code == 554) {
            return EEWDetection.fromJson(value);
          } else if (data.code == 555) {
            return Areapeers.fromJson(value);
          } else if (data.code == 556) {
            return EEW.fromJson(value);
          } else if (data.code == 561) {
            return Userquake.fromJson(value);
          } else if (data.code == 9611) {
            return UserquakeEvaluation.fromJson(value);
          }
          return data;
        case 'EEWDetection':
          return EEWDetection.fromJson(value);
        case 'EEWDetectionAllOf':
          return EEWDetectionAllOf.fromJson(value);
        case 'JMAQuake':
          return JMAQuake.fromJson(value);
        case 'JMAQuakeAllOf':
          return JMAQuakeAllOf.fromJson(value);
        case 'JMAQuakeAllOfEarthquake':
          return JMAQuakeAllOfEarthquake.fromJson(value);
        case 'JMAQuakeAllOfEarthquakeHypocenter':
          return JMAQuakeAllOfEarthquakeHypocenter.fromJson(value);
        case 'JMAQuakeAllOfIssue':
          return JMAQuakeAllOfIssue.fromJson(value);
        case 'JMAQuakeAllOfPoints':
          return JMAQuakeAllOfPoints.fromJson(value);
        case 'JMATsunami':
          return JMATsunami.fromJson(value);
        case 'JMATsunamiAllOf':
          return JMATsunamiAllOf.fromJson(value);
        case 'JMATsunamiAllOfAreas':
          return JMATsunamiAllOfAreas.fromJson(value);
        case 'JMATsunamiAllOfIssue':
          return JMATsunamiAllOfIssue.fromJson(value);
        case 'Userquake':
          return Userquake.fromJson(value);
        case 'UserquakeAllOf':
          return UserquakeAllOf.fromJson(value);
        case 'UserquakeEvaluation':
          return UserquakeEvaluation.fromJson(value);
        case 'UserquakeEvaluationAllOf':
          return UserquakeEvaluationAllOf.fromJson(value);
        case 'UserquakeEvaluationAllOfAreaConfidences':
          return UserquakeEvaluationAllOfAreaConfidences.fromJson(value);
        default:
          Match? match;
          if (value is List &&
              (match = _regList.firstMatch(targetType!)) != null) {
            final newTargetType = match![1];
            return value
                .map((v) => _deserialize(v, newTargetType, growable: growable))
                .toList(growable: true == growable);
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType!)) != null) {
            final newTargetType = match![1];
            return Map.fromIterables(
              value.keys,
              value.values.map(
                  (v) => _deserialize(v, newTargetType, growable: growable)),
            );
          }
          break;
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        e,
        stack,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    authNames.forEach((authName) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    });
  }
}
