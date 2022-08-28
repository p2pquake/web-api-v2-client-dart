//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library p2pquake_v2_api.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/json_api.dart';
part 'api/v2_api.dart';

part 'model/areapeers.dart';
part 'model/areapeers_all_of.dart';
part 'model/areapeers_all_of_areas.dart';
part 'model/basic_data.dart';
part 'model/eew.dart';
part 'model/eew_all_of_areas.dart';
part 'model/eew_all_of_earthquake.dart';
part 'model/eew_all_of_earthquake_hypocenter.dart';
part 'model/eew_all_of_issue.dart';
part 'model/eew_all_of.dart';
part 'model/eew_detection.dart';
part 'model/eew_detection_all_of.dart';
part 'model/jma_quake.dart';
part 'model/jma_quake_all_of.dart';
part 'model/jma_quake_all_of_earthquake.dart';
part 'model/jma_quake_all_of_earthquake_hypocenter.dart';
part 'model/jma_quake_all_of_issue.dart';
part 'model/jma_quake_all_of_points.dart';
part 'model/jma_tsunami.dart';
part 'model/jma_tsunami_all_of.dart';
part 'model/jma_tsunami_all_of_areas.dart';
part 'model/jma_tsunami_all_of_issue.dart';
part 'model/userquake.dart';
part 'model/userquake_all_of.dart';
part 'model/userquake_evaluation.dart';
part 'model/userquake_evaluation_all_of.dart';
part 'model/userquake_evaluation_all_of_area_confidences.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
