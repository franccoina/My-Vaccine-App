
import 'package:formz/formz.dart';


enum BirthdateValidationError { invalid }
class Birthdate extends FormzInput<String, BirthdateValidationError> {
  const Birthdate.pure() : super.pure('');
  const Birthdate.dirty([super.value = '']) : super.dirty();

  @override
  BirthdateValidationError? validator(String? value) {
    return value == null || value.isEmpty ? BirthdateValidationError.invalid : null;
  }

  String? get errorMessage {
    if (isValid || isPure) return null;
    return 'Birthdate cannot be empty';
  }
}