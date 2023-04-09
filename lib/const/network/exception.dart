class GeneralException implements Exception {
  final dynamic message;

  GeneralException({this.message}) : super();
}

class NetworkException implements Exception {
  final dynamic message;

  NetworkException({this.message = 'Check you internet connection.'}) : super();
}

class BadRequestException implements Exception {
  final dynamic message;

  BadRequestException({this.message}) : super();
}

class UnauthorisedException implements Exception {
  final dynamic message;

  UnauthorisedException({this.message}) : super();
}

class FetchDataException implements Exception {
  final dynamic message;

  FetchDataException({this.message}) : super();
}

class Forbidden implements Exception {
  final dynamic message;

  Forbidden({this.message}) : super();
}

class NotFound implements Exception {
  final dynamic message;

  NotFound({this.message}) : super();
}

class UnprocessableEntity implements Exception {
  final dynamic message;

  UnprocessableEntity({this.message}) : super();
}

class InternalServerError implements Exception {
  final dynamic message;

  InternalServerError({this.message}) : super();
}
