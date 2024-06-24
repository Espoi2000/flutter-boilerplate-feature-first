// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:dio/dio.dart';

class AppException implements Exception {
  final _message;

  AppException([this._message]);

  @override
  String toString() {
    return "$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException(String? super.message);
}

class BadRequestException extends AppException {
  BadRequestException(super.message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException(super.message);
}

class NotFoundException extends AppException {
  NotFoundException(super.message);
}

class InvalidInputException extends AppException {
  InvalidInputException(String? message) : super(("error.invalid_data"));
}

AppException handleResponseError(Response? response) {
  dynamic errorJsonValue = response!.data;

  String errorMessage = errorJsonValue['message'] ?? errorJsonValue['msg'];
  switch (response.statusCode) {
    case 400:
      throw BadRequestException(errorMessage);
    case 401:
      throw BadRequestException(errorMessage);
    case 403:
      throw UnauthorizedException(errorMessage);
    case 404:
      throw NotFoundException(errorMessage);
    case 500:
    default:
      throw FetchDataException(errorMessage);
  }
}

AppException handleDioError(DioError error) {
  switch (error.type) {
    case DioErrorType.cancel:
      throw FetchDataException(("requête annuler"));
    case DioErrorType.connectionTimeout:
      throw FetchDataException(("Connexion internet indisponible"));
    case DioErrorType.sendTimeout:
      throw FetchDataException(("Delais expirée"));
    case DioErrorType.receiveTimeout:
      throw FetchDataException(("durée d'exécution de la requête longue"));
    case DioErrorType.unknown:
      throw FetchDataException(
          ("Une erreur est survenue lors de l'execution de la requete"));
    case DioErrorType.badResponse:
      throw handleResponseError(error.response);
    case DioErrorType.badCertificate:
      throw FetchDataException(("Mauvais certificat de securite"));
    case DioErrorType.connectionError:
      throw FetchDataException(("Erreur de connection"));
  }
}
