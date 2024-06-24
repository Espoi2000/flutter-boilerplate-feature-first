import 'package:ido_mobile_application/service/interceptors/request_interceptor.dart';
import 'package:ido_mobile_application/service/interceptors/response_interceptor.dart';

import 'error_interceptor.dart';
import 'logging_interceptor.dart';

/// Logging Interceptor
LoggingInterceptor getLoggingInterceptor() {
  return LoggingInterceptor();
}

/// Error Interceptors
ErrorInterceptor getErrorInterceptor(LoggingInterceptor loggingInterceptor) {
  return ErrorInterceptor(loggingInterceptor);
}

/// Response Interceptors
ResponseInterceptor getResponseInterceptor(
    LoggingInterceptor loggingInterceptor) {
  return ResponseInterceptor(loggingInterceptor);
}

/// Request Interceptors
RequestInterceptor getRequestInterceptor(
    LoggingInterceptor loggingInterceptor) {
  return RequestInterceptor(loggingInterceptor);
}
