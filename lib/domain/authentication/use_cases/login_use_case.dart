import 'package:chat_and_video/core/failures/failure.dart';
import 'package:chat_and_video/domain/authentication/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginUseCase {
  final AuthenticationRepository authenticationRepository;

  LoginUseCase(this.authenticationRepository);

  Future<Either<Failure, UserCredential?>> login(
      String email, String password) async {
    return authenticationRepository.login(email, password);
  }
}
