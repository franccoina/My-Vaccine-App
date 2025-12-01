import 'package:formz/formz.dart';

abstract class FormzInputBase<T, E> extends FormzInput<T, E> {
  final String emptyErrorMessage;

  const FormzInputBase.pure(super.value, this.emptyErrorMessage) : super.pure();
  const FormzInputBase.dirty(super.value, this.emptyErrorMessage) : super.dirty();

  @override
  E? validator(T value) {
    return value != null && value.toString().isNotEmpty ? null : error;
  }

  @override
  E get error;

  String? get errorMessage {
    if (isValid || isPure) return null;
    return emptyErrorMessage;
  }
}
