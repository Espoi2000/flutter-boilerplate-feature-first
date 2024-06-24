// ignore_for_file: deprecated_member_use, unnecessary_brace_in_string_interps, unnecessary_null_comparison

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// This file holds the functions to be used in interceptors to include logging
class LoggingInterceptor {
  /// Error Interceptor for logging in information
  printError(DioError dioError) {
    debugPrint(
        "<-- ${dioError.message} ${(dioError.response?.requestOptions != null ? (dioError.response!.requestOptions.baseUrl + dioError.response!.requestOptions.path) : 'URL')}");
    debugPrint(
        "${dioError.response != null ? dioError.response!.data : 'Unknown Error'}");
    debugPrint("<-- End error");
  }

  /// Prints Successful response
  printSuccess(Response response) {
    debugPrint(
        "<-- ${response.statusCode} ${(response.requestOptions != null ? (response.requestOptions.baseUrl + response.requestOptions.path) : 'URL')}");
    debugPrint("Headers:");
    response.headers.forEach((k, v) => debugPrint('${k}: ${v}'));
    debugPrint("Response: ${response.data}");
    debugPrint("<-- END HTTP");
  }

  /// Prints request
  ///
  /// Prints body if it has body
  /// Prints headers, even if does not have headers
  printRequest(RequestOptions options) {
    debugPrint(
        "--> ${options.method.isNotEmpty ? options.method.toUpperCase() : 'METHOD'} ${"${options.baseUrl.isEmpty ? "" : options.baseUrl}${options.path.isNotEmpty ? "" : options.path}"}");
    debugPrint("Headers:");
    options.headers.forEach((k, v) => debugPrint('$k: $v'));
    if (options.queryParameters.isNotEmpty) {
      debugPrint("queryParameters:");
      options.queryParameters.forEach((k, v) => debugPrint('$k: $v'));
    }
    if (options.data != null) {
      debugPrint("Body: ${options.data}");
    }
    debugPrint(
        "--> END ${options.method.isNotEmpty ? options.method.toUpperCase() : 'METHOD'}");

    return options;
  }
}
