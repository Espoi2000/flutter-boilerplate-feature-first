class Errors {
  String msg;

  Errors({
    required this.msg,
  });

  Errors.fromJson(Map<String, dynamic> json) : msg = json['msg'];
}

class FieldErrors {
  bool status;
  List<Errors> errors;

  FieldErrors({
    required this.errors,
    required this.status,
  });

  FieldErrors.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        errors = json['errors'];
}
