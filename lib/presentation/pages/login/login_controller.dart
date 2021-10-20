import 'package:chat_and_video/domain/authentication/use_cases/login_use_case.dart';
import 'package:flutter/cupertino.dart';

class LoginController {
  LoginController({required LoginUseCase login}) : _login = login;

  final LoginUseCase _login;
  final emailController = TextEditingController(text: 'dojo@test.com');
  final passwordController = TextEditingController(text: '123456');

  bool logged = false;

  Future<void> login() async {
    final response =
        await _login.login(emailController.text, passwordController.text);
    return response.fold((l) => logged, (r) => logged = true);
  }
}
