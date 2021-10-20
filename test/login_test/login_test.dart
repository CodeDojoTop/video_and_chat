import 'package:chat_and_video/domain/authentication/failures/login/login_failure.dart';
import 'package:chat_and_video/domain/authentication/use_cases/login_use_case.dart';
import 'package:chat_and_video/presentation/pages/login/login_controller.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginUseCase extends Mock implements LoginUseCase {}

class MockUserCredential extends Mock implements UserCredential {}

void main() async {
  final mockLoginUseCase = MockLoginUseCase();
  final loginController = LoginController(login: mockLoginUseCase);

  group('LoginController', () {
    test('Deveria Retornar uma LoginFailure', () async {
      when(() => mockLoginUseCase.login(any(), any()))
          .thenAnswer((invocation) async => Left(LoginFailure()));

      await loginController.login();

      expect(
        loginController.logged,
        equals(false),
      );
    });
    test('Deveria Retornar um UserCredential', () async {
      when(() => mockLoginUseCase.login(any(), any()))
          .thenAnswer((invocation) async => Right(MockUserCredential()));

      await loginController.login();

      expect(
        loginController.logged,
        equals(true),
      );
    });
  });
}
