import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'api_const.dart';
import 'exception.dart';

class ApiClient {
  Future<dynamic> get(
    String path,
  ) async {
    try {
      final response = await http.get(
        getPath(path: path),
        headers: {
          "Content-Type": "application/json",
        },
      );
      return _returnResponse(response);
    } on SocketException catch (_) {
      throw NetworkException();
    }
  }

  Future<Map<String, dynamic>> post(String path,
      {Map<String, dynamic>? params}) async {
    try {
      var response = await http.post(
        getPath(path: path),
        body: json.encode(params),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      return _returnResponse(response);
    } on SocketException {
      throw const FormatException();
    }
  }

  Future<Map<String, dynamic>> put(
    String path, {
    Map<String, dynamic>? params,
  }) async {
    try {
      var response = await http.put(
        getPath(path: path),
        body: json.encode(params),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      return _returnResponse(response);
    } on SocketException {
      throw const FormatException();
    }
  }

  dynamic patch(
    String path, {
    Map<dynamic, dynamic>? params,
  }) async {
    final response = await http.patch(
      getPath(path: path),
      body: json.encode(params),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    var responseJson = _returnResponse(response);
    return responseJson;
  }

  Uri getPath({
    String baseUrl = ApiConst.baseUrl,
    required String path,
  }) {
    return Uri.parse('$baseUrl/$path');
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        dynamic responseJson = json.decode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException();
      case 401:
      case 403:
        throw UnauthorisedException();
      case 404:
        throw NotFound();
      case 422:
        throw UnprocessableEntity();
      case 500:
        throw InternalServerError();
      default:
        throw FetchDataException();
    }
  }
}
