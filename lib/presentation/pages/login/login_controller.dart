import 'package:chat_and_video/domain/authentication/use_cases/login_use_case.dart';

class LoginController {
  LoginController({required LoginUseCase login}) : _login = login;

  final LoginUseCase _login;
}
