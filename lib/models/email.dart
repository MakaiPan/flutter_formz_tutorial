import 'package:flutter_formz_demo/utils.dart';
import 'package:formz/formz.dart';

enum EmailInputError {
  empty,
  invalid,
}

class Email extends FormzInput<String, EmailInputError> {
  const Email.pure() : super.pure('');

  const Email.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) return EmailInputError.empty;
    if (!Utils.emailRegExp.hasMatch(value)) return EmailInputError.invalid;
    return null;
  }
}
