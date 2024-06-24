import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetProductImgCall {
  static Future<ApiCallResponse> call({
    List<String>? imgList,
    List<int>? idList,
    List<String>? nameList,
    List<String>? priceList,
  }) async {
    final img = _serializeList(imgList);
    final id = _serializeList(idList);
    final name = _serializeList(nameList);
    final price = _serializeList(priceList);

    return ApiManager.instance.makeApiCall(
      callName: 'GetProductImg',
      apiUrl:
          'https://ffugorsdjjxnnlbwptfh.supabase.co/rest/v1/product?order=id.asc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmdWdvcnNkamp4bm5sYndwdGZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNjI5MTIsImV4cCI6MjAzMzgzODkxMn0.X44TcAHE9u2Rx0ViGUY47M2lbJqbTB5yemWUU2utuB4',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmdWdvcnNkamp4bm5sYndwdGZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNjI5MTIsImV4cCI6MjAzMzgzODkxMn0.X44TcAHE9u2Rx0ViGUY47M2lbJqbTB5yemWUU2utuB4',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? img(dynamic response) => (getJsonField(
        response,
        r'''$[:].img_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetItemCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetItem',
      apiUrl:
          'https://ffugorsdjjxnnlbwptfh.supabase.co/rest/v1/product?id=eq.$id',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmdWdvcnNkamp4bm5sYndwdGZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNjI5MTIsImV4cCI6MjAzMzgzODkxMn0.X44TcAHE9u2Rx0ViGUY47M2lbJqbTB5yemWUU2utuB4',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmdWdvcnNkamp4bm5sYndwdGZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNjI5MTIsImV4cCI6MjAzMzgzODkxMn0.X44TcAHE9u2Rx0ViGUY47M2lbJqbTB5yemWUU2utuB4',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? img(dynamic response) => (getJsonField(
        response,
        r'''$[:].img_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? created(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
