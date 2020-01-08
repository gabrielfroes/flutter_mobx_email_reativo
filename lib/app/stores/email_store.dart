import 'package:mobx/mobx.dart';
import 'package:email_validator/email_validator.dart';
part 'email_store.g.dart';

class EmailStore = _EmailStore with _$EmailStore;

abstract class _EmailStore with Store {
  @observable
  bool buttonEnabled = false;

  @action
  void changeEmail(value) {
    print(value);

    buttonEnabled = EmailValidator.validate(value);
  }
}
